# MMI-SP Enhanced
_A GTA V mod -- Mors Mutual Insurance Single Player -- fixed for GTA V Enhanced_

[![Trailer video](https://user-images.githubusercontent.com/9498543/162617439-42459c98-9915-4a43-b476-c339192e307a.png)](https://www.youtube.com/watch?v=WATdK3aOdGk)

Tired of losing your 500k$ fully modded vehicle because you went on a mission and it disappeared? Don't wait any longer and insure your vehicle now at Mors Mutual Insurance.

---

## What this fork fixes

The original MMI-SP mod (v1.2.1, 2018) does not work on GTA V **Enhanced** (the new 2025 edition). This fork fixes every known issue:

- **IO errors on db.xml** -- moved the database to `%LOCALAPPDATA%\MMI-SP\` to avoid Windows Defender AMSI file locks inside Program Files
- **SE.Extender crash** -- rebuilt SHVDN-Extender from source with logging redirected to `%LOCALAPPDATA%\MMI-SP\`
- **SoundPlay crash** -- fixed a race condition in MMISound where the WaveStream was garbage-collected during playback; playback now runs on a background thread so the phone doesn't freeze when MMI answers
- **TypeInitializationException** -- WAVs are no longer embedded resources. They load from `scripts/MMI/sounds/`, removing the System.Resources.Extensions NuGet dependency (whose .NET 8 DLLs conflicted with .NET Framework 4.8)
- **Missing menu text** -- added 41 missing language strings for the Config menu and Plate Change submenu
- **Persistent vehicle fix** -- vehicles are properly persisted across sessions
- **Concurrent save fix** -- added a lock around db.xml mutations to prevent lost updates when SHVDN-Enhanced runs scripts on a shared ThreadPool
- **White squares / missing contact icons on the phone** -- updated iFruitAddon2 to v3.1.1 (Bob74's Enhanced-compatible build)
- **Agency NullReferenceException** -- null guards on the office state in the Agency menu
- **FormatException on startup** -- removed the SelfCheck and Updater code that pinged Bob74's GitHub for version checks (the upstream repo no longer maintains MMI-SP)

---

## Installation

**Requirements:**
- GTA V **Enhanced** (the new edition, not Legacy)
- [ScriptHookV](http://www.dev-c.com/gta5/scripthookv/) (Enhanced build)
- [ScriptHookVDotNet Enhanced](https://github.com/Chiheb-Bacha/ScriptHookVDotNetEnhanced) (Chiheb-Bacha fork)

**Steps:**

1. Download `MMI-SP-Enhanced.zip` from the [Releases](https://github.com/JakeBiggs/MMI-SP-Enhanced/releases) page
2. Extract to your GTA V Enhanced folder:
   ```
   Grand Theft Auto V Enhanced\
     scripts\
       MMI-SP.dll
       SHVDN-Extender.dll
       iFruitAddon2.dll
       NativeUI.dll
       MMI\
         banner.png
         config.ini
         default.xml
         insurance.png
         sounds\
           23 WAV voice clips
   ```
3. Launch the game. Press **Up** on the d-pad (or the phone key) to open the phone, then call **Mors Mutual Insurance**.
4. Your insured vehicles database is stored at `%LOCALAPPDATA%\MMI-SP\db.xml` -- this survives mod updates and game reinstalls.

---

## Building from source

**Requirements:** .NET SDK, .NET Framework 4.8 reference assemblies

```bash
cd src/MMI-SP-Enhanced
dotnet build -c Release
```

The output is `bin/Release/MMI-SP.dll` (126 KB, no embedded assets -- sounds load from disk). The extender is pre-built (source at `extender-release/`). iFruitAddon2 is bundled at `deps/`.

---

## Changelog

### Enhanced Edition fixes (August 2026)
- Moved db.xml to `%LOCALAPPDATA%\MMI-SP\` to avoid AMSI file locks
- Rebuilt SHVDN-Extender from source with LocalAppData logging
- Fixed MMISound WaveStream GC race (background-thread playback)
- WAVs load from `scripts/MMI/sounds/` -- no System.Resources.Extensions dependency
- Added 41 missing language strings for Config menu and Plate Change
- Lock around db.xml mutate+save for ThreadPool safety
- Updated iFruitAddon2 to v3.1.1 (Enhanced compatible)
- Null guards on Agency office state
- Removed SelfCheck and Updater (dead Bob74 infra, caused FormatException)

### Original changelog (by Bob74)

**1.2.1** (10/04/2022)
- Fixed persistence issue
- Released source code

**1.2.0** (24/02/2018)
- In-game config menu via phone contact
- License plate change
- Persistent insured vehicles
- Larger insurable vehicle set

**1.1.0 - 1.1.4** (Jan-Feb 2018)
- Vehicle recovery / bring-to-player
- Update detection
- Prerequisite checks
- Various crash fixes

**1.0.0** (26/01/2018)
- Initial release

---

## Credits

- **Bob74** -- original MMI-SP mod, SHVDN-Extender, and iFruitAddon2
- **Jake Biggs** -- Enhanced Edition fixes and bundled release
- **Chiheb-Bacha** -- ScriptHookVDotNet Enhanced fork
- **Alexander Blade** -- ScriptHookV
