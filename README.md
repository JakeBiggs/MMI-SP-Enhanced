# MMI-SP Enhanced
_A GTA V mod -- Mors Mutual Insurance Single Player -- fixed for GTA V Enhanced_

[![Trailer video](https://user-images.githubusercontent.com/9498543/162617439-42459c98-9915-4a43-b476-c339192e307a.png)](https://www.youtube.com/watch?v=WATdK3aOdGk)

Tired of losing your 500k$ fully modded vehicle because you went on a mission and it disappeared? Don't wait any longer and insure your vehicle now at Mors Mutual Insurance.

---

## What this fork fixes

The original MMI-SP mod (v1.2.1, 2018) does not work on GTA V **Enhanced** (the new 2025 edition). This fork fixes every known issue:

- **IO errors on db.xml** -- moved the database to `%LOCALAPPDATA%\MMI-SP\` to avoid Windows Defender AMSI file locks inside Program Files
- **SE.Extender crash** -- rebuilt SHVDN-Extender from source with logging redirected to `%LOCALAPPDATA%`
- **SoundPlay crash** -- fixed a race condition in MMISound where the WaveStream was garbage-collected during playback
- **TypeInitializationException** -- switched resource serialization to BinaryFormatter (built into .NET Framework) instead of requiring an external NuGet DLL
- **Missing menu text** -- added 41 missing language strings for the Config menu and Plate Change submenu
- **Persistent vehicle fix** -- vehicles are properly persisted across sessions
- **Concurrent save fix** -- added a lock around db.xml mutations to prevent lost updates when SHVDN-Enhanced runs scripts on a shared ThreadPool

All dependencies are bundled. No external DLLs to hunt down.

---

## Installation

**Requirements:**
- GTA V **Enhanced** (the new edition, not Legacy)
- [ScriptHookV](http://www.dev-c.com/gta5/scripthookv/) (Enhanced build, v3889.0+)
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
   ```
3. Launch the game. Press **Up** on the d-pad (or the phone key) to open the phone, then call **Mors Mutual Insurance**.
4. Your insured vehicles database is stored at `%LOCALAPPDATA%\MMI-SP\db.xml` -- this survives mod updates and game reinstalls.

---

## Building from source

**Requirements:** .NET 8+ SDK, .NET Framework 4.8 reference assemblies

```bash
cd src/MMI-SP-Enhanced
dotnet build -c Release
```

The output is `bin/Release/MMI-SP.dll`. The extender is pre-built (source at `extender-release/`).

---

## Changelog

### Enhanced Edition fixes (August 2026)
- Moved db.xml to `%LOCALAPPDATA%\MMI-SP\` to avoid AMSI file locks
- Rebuilt SHVDN-Extender from source with LocalAppData logging
- Fixed MMISound WaveStream GC race (PlaySync + using)
- Switched resource serialization to BinaryFormatter (no external NuGet DLL)
- Added 41 missing language strings for Config menu and Plate Change
- Lock around db.xml mutate+save for ThreadPool safety
- `IsVehicleInsured` reads from cached `_dbFile` instead of disk

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

- **Bob74** -- original MMI-SP mod and SHVDN-Extender
- **Jake Biggs** -- Enhanced Edition fixes and bundled release
- **Chiheb-Bacha** -- ScriptHookVDotNet Enhanced fork
- **Alexander Blade** -- ScriptHookV