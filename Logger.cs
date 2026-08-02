using System;
using System.IO;

using MMI_SP.Common;

/// <summary>
/// Static logger class that allows direct logging of anything to a text file
/// </summary>
static class Logger
{
    // Resolve the log path at class-init time, not on every write. The
    // scripts folder is the GTA V Enhanced convention (AppDomain.BaseDirectory
    // = game/scripts). The previous version used the literal string "MMI-SP.log"
    // which resolves relative to the process CWD -- on Enhanced the CWD is
    // often the Steam or Rockstar Launcher dir, where the file can't be
    // created. That threw on the first Tick and aborted MMI() before it
    // could ever log anything, making the mod look like a silent no-op.
    private static readonly string logFilePath =
        Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "MMI-SP.log");

    public static void ResetLogFile()
    {
        try
        {
            // File.Create truncates if it exists -- exactly the original
            // behaviour we want at mod startup.
            using (FileStream fs = File.Create(logFilePath))
            {
                fs.Close();
            }
        }
        catch (Exception ex)
        {
            // Last-ditch fallback: write to %TEMP% if the scripts folder
            // is somehow not writable. Never throw from ResetLogFile --
            // the caller (MMI.Initialize) has no catch and will abort
            // the script.
            try
            {
                string fallback = Path.Combine(
                    Path.GetTempPath(),
                    "MMI-SP-" + System.Diagnostics.Process.GetCurrentProcess().Id + ".log");
                File.WriteAllText(fallback, "Logger.ResetLogFile fallback (scripts path unwritable): " + ex.Message + Environment.NewLine);
                logFilePath_Override = fallback;
            }
            catch
            {
                // Give up silently -- better to lose logs than to abort MMI.
            }
        }
    }

    // When the scripts folder is unwritable we redirect writes to a
    // %TEMP% path so we still get *some* log info. Set by ResetLogFile.
    private static string logFilePath_Override = null;
    private static string LogFilePath => logFilePath_Override ?? logFilePath;

    public static void Debug(object message)
    {
        if (MMI_SP.MMI.IsDebug)
        {
            Log("Debug - " + Utils.GetCurrentMethod(1) + " " + message);
        }
    }
    public static void Info(object message)
    {
        Log("Info - " + message);
    }
    public static void Warning(object message)
    {
        Log("Warning - " + message);
    }
    public static void Error(object message)
    {
        Log("Error - " + Utils.GetCurrentMethod(1) + " " + message);
    }
    public static void Exception(Exception ex)
    {
        Log("Exception - " + ex.Message + "\r\n" + ex.StackTrace);
    }

    private static void Log(object message)
    {
        try
        {
            File.AppendAllText(LogFilePath, DateTime.Now + " : " + message + Environment.NewLine);
        }
        catch
        {
            // Swallow: a logging failure must never abort the mod.
        }
    }
}