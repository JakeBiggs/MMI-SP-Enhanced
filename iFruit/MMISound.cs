using System;
using System.IO;
using System.Media;
using System.Collections.Generic;

namespace MMI_SP.iFruit
{
    static class MMISound
    {
        private static Random _rnd = new Random();
        public enum SoundFamily { Hello, Okay, Bye, NoMoney };

        private static int _volume = 25;
        public static int Volume { get => _volume; set => _volume = value; }

        // Sounds are loose .wav files under scripts/MMI/sounds/.
        // Loading from disk avoids the System.Resources.Extensions NuGet
        // dependency (whose .NET 8 DLLs conflict with .NET Framework 4.8
        // and cause white squares / missing phone icons on Enhanced).
        private static string[] _helloFiles;
        private static string[] _byeFiles;
        private static string[] _okayFiles;
        private static string[] _noMoneyFiles;

        private static string SoundsDir
        {
            get { return Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "MMI", "sounds"); }
        }

        static MMISound()
        {
            try
            {
                string dir = SoundsDir;
                if (!Directory.Exists(dir))
                    Directory.CreateDirectory(dir);

                _helloFiles = new[] {
                    "Start_HelloThisIsMMI.wav",
                    "Start_MMIExpectUnexpected.wav",
                    "Start_MMIHereToHelp.wav",
                    "Start_MMIHowCanHelp.wav",
                    "Start_MMIHowCanIBeService.wav",
                    "Start_MMIPeaceOfMind.wav",
                    "Start_MMITrust.wav",
                    "Start_WhatCanIDo.wav",
                    "Start_WhatCanIHelpYouWith.wav"
                };
                _byeFiles = new[] {
                    "End_ByeNow.wav",
                    "End_DriveSafe.wav",
                    "End_NiceDay.wav",
                    "End_NiveDay2.wav",
                    "End_SoLong.wav",
                    "End_StaySafe.wav"
                };
                _okayFiles = new[] {
                    "Mid_ICanDoThat.wav",
                    "Mid_ILookIntoit.wav",
                    "Mid_IWillDoMyBest.wav",
                    "Mid_Okay.wav",
                    "Mid_Sure.wav",
                    "Mid_WeCanDoThat.wav",
                    "Mid_WeCanHandleThat.wav"
                };
                _noMoneyFiles = new[] { "NoMoney.wav" };
            }
            catch (Exception ex)
            {
                _helloFiles = new string[0];
                _byeFiles = new string[0];
                _okayFiles = new string[0];
                _noMoneyFiles = new string[0];
                Logger.Info("MMISound: failed to initialise file lists: " + ex.Message);
            }
        }

        public static void Play(SoundFamily family)
        {
            string[] files;
            if (family == SoundFamily.Hello)
                files = _helloFiles;
            else if (family == SoundFamily.Okay)
                files = _okayFiles;
            else if (family == SoundFamily.Bye)
                files = _byeFiles;
            else if (family == SoundFamily.NoMoney)
                files = _noMoneyFiles;
            else
                return;

            if (files == null || files.Length == 0)
                return;

            string path = Path.Combine(SoundsDir, files[_rnd.Next(0, files.Length)]);
            int vol = _volume;
            if (vol < 0) vol = 0;
            if (vol > 100) vol = 100;

            // Queue on a background thread so the calling script does not
            // block. The closure keeps the FileStream alive for the
            // duration, preventing the GC race.
            System.Threading.ThreadPool.QueueUserWorkItem(_ =>
            {
                try
                {
                    using (FileStream fs = File.OpenRead(path))
                    using (WaveStream ws = new WaveStream(fs))
                    {
                        ws.Volume = vol;
                        using (SoundPlayer player = new SoundPlayer(ws))
                        {
                            player.PlaySync();
                        }
                    }
                }
                catch (Exception e)
                {
                    Logger.Error("MMISound Play: " + path + " - " + e.Message);
                }
            });
        }
    }
}