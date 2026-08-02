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

        // On GTA V Enhanced, the CLR can fail to resolve embedded resource
        // streams during static field initialization (the assembly load
        // context differs from Legacy). If any resource fails, we catch it
        // in the static constructor so the type initializes successfully
        // with empty lists -- Play() becomes a no-op for that family rather
        // than throwing TypeInitializationException and killing iFruitMMI.
        private static List<UnmanagedMemoryStream> _helloList;
        private static List<UnmanagedMemoryStream> _byeList;
        private static List<UnmanagedMemoryStream> _okayList;
        private static List<UnmanagedMemoryStream> _noMoneyList;

        static MMISound()
        {
            try
            {
                _helloList = new List<UnmanagedMemoryStream> {
                    Properties.Resources.Start_HelloThisIsMMI,
                    Properties.Resources.Start_MMIExpectUnexpected,
                    Properties.Resources.Start_MMIHereToHelp,
                    Properties.Resources.Start_MMIHowCanHelp,
                    Properties.Resources.Start_MMIHowCanIBeService,
                    Properties.Resources.Start_MMIPeaceOfMind,
                    Properties.Resources.Start_MMITrust,
                    Properties.Resources.Start_WhatCanIDo,
                    Properties.Resources.Start_WhatCanIHelpYouWith
                };
            }
            catch (Exception ex)
            {
                _helloList = new List<UnmanagedMemoryStream>();
                Logger.Info("MMISound: hello resources failed to load: " + ex.Message);
            }
            try
            {
                _byeList = new List<UnmanagedMemoryStream> {
                    Properties.Resources.End_ByeNow,
                    Properties.Resources.End_DriveSafe,
                    Properties.Resources.End_NiceDay,
                    Properties.Resources.End_NiveDay2,
                    Properties.Resources.End_SoLong,
                    Properties.Resources.End_StaySafe
                };
            }
            catch (Exception ex)
            {
                _byeList = new List<UnmanagedMemoryStream>();
                Logger.Info("MMISound: bye resources failed to load: " + ex.Message);
            }
            try
            {
                _okayList = new List<UnmanagedMemoryStream> {
                    Properties.Resources.Mid_ICanDoThat,
                    Properties.Resources.Mid_ILookIntoit,
                    Properties.Resources.Mid_IWillDoMyBest,
                    Properties.Resources.Mid_Okay,
                    Properties.Resources.Mid_Sure,
                    Properties.Resources.Mid_WeCanDoThat,
                    Properties.Resources.Mid_WeCanHandleThat
                };
            }
            catch (Exception ex)
            {
                _okayList = new List<UnmanagedMemoryStream>();
                Logger.Info("MMISound: okay resources failed to load: " + ex.Message);
            }
            try
            {
                _noMoneyList = new List<UnmanagedMemoryStream> { Properties.Resources.NoMoney };
            }
            catch (Exception ex)
            {
                _noMoneyList = new List<UnmanagedMemoryStream>();
                Logger.Info("MMISound: noMoney resources failed to load: " + ex.Message);
            }
        }

        public static void Play(SoundFamily family)
        {
            List<UnmanagedMemoryStream> list = new List<UnmanagedMemoryStream>();
            if (family == SoundFamily.Hello)
                list.AddRange(_helloList);
            else if (family == SoundFamily.Okay)
                list.AddRange(_okayList);
            else if (family == SoundFamily.Bye)
                list.AddRange(_byeList);
            else if (family == SoundFamily.NoMoney)
                list.AddRange(_noMoneyList);

            if (list.Count == 0)
                return;

            int index = _rnd.Next(0, list.Count - 1);

            try
            {
                UnmanagedMemoryStream stream = list[index];

                if (_volume < 0) _volume = 0;
                if (_volume > 100) _volume = 100;

                // Queue on a background thread so the calling script does not
                // block. PlaySync is still used for deterministic disposal, but
                // the closure keeps WaveStream and SoundPlayer alive until
                // playback finishes -- no GC race.
                UnmanagedMemoryStream captured = stream;
                int vol = _volume;
                System.Threading.ThreadPool.QueueUserWorkItem(_ =>
                {
                    captured.Position = 0L;
                    using (WaveStream ws = new WaveStream(captured))
                    {
                        ws.Volume = vol;
                        using (SoundPlayer player = new SoundPlayer(ws))
                        {
                            player.PlaySync();
                        }
                    }
                });
            }
            catch (Exception e)
            {
                Logger.Error(family.ToString() + " n\u00b0" + index.ToString() + ". " + e.Message);
            }
        }
    }
}