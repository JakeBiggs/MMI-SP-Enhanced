// IL code: SHVDN-Extender
.class private auto ansi '<Module>'
{
} // end of class <Module>

.class private auto ansi abstract sealed beforefieldinit Logger
	extends [mscorlib]System.Object
{
	// Fields
	.field private static string logFileName

	// Methods
	.method public hidebysig static 
			void Log (
				object message
			) cil managed 
		{
			// Method begins at RVA 0x2048
			// Header size: 1
			// Code size: 1 (0x1)
			.maxstack 0

			IL_0000: ret
		} // end of method Logger::Log

	.method private hidebysig specialname rtspecialname static 
		void .cctor () cil managed 
	{
		// Method begins at RVA 0x2080
		// Header size: 1
		// Code size: 11 (0xb)
		.maxstack 8

		IL_0000: ldstr "SHVDN-Extender.log"
		IL_0005: stsfld string Logger::logFileName
		IL_000a: ret
	} // end of method Logger::.cctor

} // end of class Logger

.class public auto ansi abstract sealed beforefieldinit SE.Camera
	extends [mscorlib]System.Object
{
	// Methods
	.method public hidebysig static 
		void Fade (
			int32 fadeOutDuration,
			[opt] int32 fadeInDuration
		) cil managed 
	{
		.param [2] = int32(0)
		// Method begins at RVA 0x208c
		// Header size: 1
		// Code size: 31 (0x1f)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0006

		IL_0003: ldarg.0
		IL_0004: starg.s fadeInDuration

		IL_0006: ldarg.0
		IL_0007: call void [ScriptHookVDotNet2]GTA.Game::FadeScreenOut(int32)
		IL_000c: ldarg.0
		IL_000d: ldc.i4 500
		IL_0012: add
		IL_0013: call void [ScriptHookVDotNet2]GTA.Script::Wait(int32)
		IL_0018: ldarg.0
		IL_0019: call void [ScriptHookVDotNet2]GTA.Game::FadeScreenIn(int32)
		IL_001e: ret
	} // end of method Camera::Fade

	.method public hidebysig static 
		void StartScreenEffect (
			valuetype SE.ScreenEffect effect
		) cil managed 
	{
		// Method begins at RVA 0x20ac
		// Header size: 1
		// Code size: 60 (0x3c)
		.maxstack 8

		IL_0000: ldc.i8 2451857716230485796
		IL_0009: ldc.i4.3
		IL_000a: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_000f: dup
		IL_0010: ldc.i4.0
		IL_0011: ldarga.s effect
		IL_0013: constrained. SE.ScreenEffect
		IL_0019: callvirt instance string [mscorlib]System.Object::ToString()
		IL_001e: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_0023: stelem.ref
		IL_0024: dup
		IL_0025: ldc.i4.1
		IL_0026: ldc.i4.0
		IL_0027: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_002c: stelem.ref
		IL_002d: dup
		IL_002e: ldc.i4.2
		IL_002f: ldc.i4.1
		IL_0030: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(bool)
		IL_0035: stelem.ref
		IL_0036: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_003b: ret
	} // end of method Camera::StartScreenEffect

	.method public hidebysig static 
		void StopScreenEffect (
			valuetype SE.ScreenEffect effect
		) cil managed 
	{
		// Method begins at RVA 0x20e9
		// Header size: 1
		// Code size: 42 (0x2a)
		.maxstack 8

		IL_0000: ldc.i8 472459433978216675
		IL_0009: ldc.i4.1
		IL_000a: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_000f: dup
		IL_0010: ldc.i4.0
		IL_0011: ldarga.s effect
		IL_0013: constrained. SE.ScreenEffect
		IL_0019: callvirt instance string [mscorlib]System.Object::ToString()
		IL_001e: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_0023: stelem.ref
		IL_0024: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_0029: ret
	} // end of method Camera::StopScreenEffect

	.method public hidebysig static 
		void StopAllScreenEffect () cil managed 
	{
		// Method begins at RVA 0x2114
		// Header size: 1
		// Code size: 20 (0x14)
		.maxstack 8

		IL_0000: ldc.i8 -5409425576074413179
		IL_0009: call !!0[] [mscorlib]System.Array::Empty<class [ScriptHookVDotNet2]GTA.Native.InputArgument>()
		IL_000e: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_0013: ret
	} // end of method Camera::StopAllScreenEffect

} // end of class SE.Camera

.class public auto ansi sealed SE.ScreenEffect
	extends [mscorlib]System.Enum
{
	// Fields
	.field public specialname rtspecialname int32 value__
	.field public static literal valuetype SE.ScreenEffect SwitchHudIn = int32(0)
	.field public static literal valuetype SE.ScreenEffect SwitchHudOut = int32(1)
	.field public static literal valuetype SE.ScreenEffect FocusIn = int32(2)
	.field public static literal valuetype SE.ScreenEffect FocusOut = int32(3)
	.field public static literal valuetype SE.ScreenEffect MinigameEndNeutral = int32(4)
	.field public static literal valuetype SE.ScreenEffect MinigameEndTrevor = int32(5)
	.field public static literal valuetype SE.ScreenEffect MinigameEndFranklin = int32(6)
	.field public static literal valuetype SE.ScreenEffect MinigameEndMichael = int32(7)
	.field public static literal valuetype SE.ScreenEffect MinigameTransitionOut = int32(8)
	.field public static literal valuetype SE.ScreenEffect MinigameTransitionIn = int32(9)
	.field public static literal valuetype SE.ScreenEffect SwitchShortNeutralIn = int32(10)
	.field public static literal valuetype SE.ScreenEffect SwitchShortFranklinIn = int32(11)
	.field public static literal valuetype SE.ScreenEffect SwitchShortTrevorIn = int32(12)
	.field public static literal valuetype SE.ScreenEffect SwitchShortMichaelIn = int32(13)
	.field public static literal valuetype SE.ScreenEffect SwitchOpenMichaelIn = int32(14)
	.field public static literal valuetype SE.ScreenEffect SwitchOpenFranklinIn = int32(15)
	.field public static literal valuetype SE.ScreenEffect SwitchOpenTrevorIn = int32(16)
	.field public static literal valuetype SE.ScreenEffect SwitchHudMichaelOut = int32(17)
	.field public static literal valuetype SE.ScreenEffect SwitchHudFranklinOut = int32(18)
	.field public static literal valuetype SE.ScreenEffect SwitchHudTrevorOut = int32(19)
	.field public static literal valuetype SE.ScreenEffect SwitchShortFranklinMid = int32(20)
	.field public static literal valuetype SE.ScreenEffect SwitchShortMichaelMid = int32(21)
	.field public static literal valuetype SE.ScreenEffect SwitchShortTrevorMid = int32(22)
	.field public static literal valuetype SE.ScreenEffect DeathFailOut = int32(23)
	.field public static literal valuetype SE.ScreenEffect CamPushInNeutral = int32(24)
	.field public static literal valuetype SE.ScreenEffect CamPushInFranklin = int32(25)
	.field public static literal valuetype SE.ScreenEffect CamPushInMichael = int32(26)
	.field public static literal valuetype SE.ScreenEffect CamPushInTrevor = int32(27)
	.field public static literal valuetype SE.ScreenEffect SwitchSceneFranklin = int32(28)
	.field public static literal valuetype SE.ScreenEffect SwitchSceneTrevor = int32(29)
	.field public static literal valuetype SE.ScreenEffect SwitchSceneMichael = int32(30)
	.field public static literal valuetype SE.ScreenEffect SwitchSceneNeutral = int32(31)
	.field public static literal valuetype SE.ScreenEffect MpCelebWin = int32(32)
	.field public static literal valuetype SE.ScreenEffect MpCelebWinOut = int32(33)
	.field public static literal valuetype SE.ScreenEffect MpCelebLose = int32(34)
	.field public static literal valuetype SE.ScreenEffect MpCelebLoseOut = int32(35)
	.field public static literal valuetype SE.ScreenEffect DeathFailNeutralIn = int32(36)
	.field public static literal valuetype SE.ScreenEffect DeathFailMpDark = int32(37)
	.field public static literal valuetype SE.ScreenEffect DeathFailMpIn = int32(38)
	.field public static literal valuetype SE.ScreenEffect MpCelebPreloadFade = int32(39)
	.field public static literal valuetype SE.ScreenEffect PeyoteEndOut = int32(40)
	.field public static literal valuetype SE.ScreenEffect PeyoteEndIn = int32(41)
	.field public static literal valuetype SE.ScreenEffect PeyoteIn = int32(42)
	.field public static literal valuetype SE.ScreenEffect PeyoteOut = int32(43)
	.field public static literal valuetype SE.ScreenEffect MpRaceCrash = int32(44)
	.field public static literal valuetype SE.ScreenEffect SuccessFranklin = int32(45)
	.field public static literal valuetype SE.ScreenEffect SuccessTrevor = int32(46)
	.field public static literal valuetype SE.ScreenEffect SuccessMichael = int32(47)
	.field public static literal valuetype SE.ScreenEffect DrugsMichaelAliensFightIn = int32(48)
	.field public static literal valuetype SE.ScreenEffect DrugsMichaelAliensFight = int32(49)
	.field public static literal valuetype SE.ScreenEffect DrugsMichaelAliensFightOut = int32(50)
	.field public static literal valuetype SE.ScreenEffect DrugsTrevorClownsFightIn = int32(51)
	.field public static literal valuetype SE.ScreenEffect DrugsTrevorClownsFight = int32(52)
	.field public static literal valuetype SE.ScreenEffect DrugsTrevorClownsFightOut = int32(53)
	.field public static literal valuetype SE.ScreenEffect HeistCelebPass = int32(54)
	.field public static literal valuetype SE.ScreenEffect HeistCelebPassBw = int32(55)
	.field public static literal valuetype SE.ScreenEffect HeistCelebEnd = int32(56)
	.field public static literal valuetype SE.ScreenEffect HeistCelebToast = int32(57)
	.field public static literal valuetype SE.ScreenEffect MenuMgHeistIn = int32(58)
	.field public static literal valuetype SE.ScreenEffect MenuMgTournamentIn = int32(59)
	.field public static literal valuetype SE.ScreenEffect MenuMgSelectionIn = int32(60)
	.field public static literal valuetype SE.ScreenEffect ChopVision = int32(61)
	.field public static literal valuetype SE.ScreenEffect DmtFlightIntro = int32(62)
	.field public static literal valuetype SE.ScreenEffect DmtFlight = int32(63)
	.field public static literal valuetype SE.ScreenEffect DrugsDrivingIn = int32(64)
	.field public static literal valuetype SE.ScreenEffect DrugsDrivingOut = int32(65)
	.field public static literal valuetype SE.ScreenEffect SwitchOpenNeutralFib5 = int32(66)
	.field public static literal valuetype SE.ScreenEffect HeistLocate = int32(67)
	.field public static literal valuetype SE.ScreenEffect MpJobLoad = int32(68)
	.field public static literal valuetype SE.ScreenEffect RaceTurbo = int32(69)
	.field public static literal valuetype SE.ScreenEffect MpIntroLogo = int32(70)
	.field public static literal valuetype SE.ScreenEffect HeistTripSkipFade = int32(71)
	.field public static literal valuetype SE.ScreenEffect MenuMgHeistOut = int32(72)
	.field public static literal valuetype SE.ScreenEffect MpCoronaSwitch = int32(73)
	.field public static literal valuetype SE.ScreenEffect MenuMgSelectionTint = int32(74)
	.field public static literal valuetype SE.ScreenEffect SuccessNeutral = int32(75)
	.field public static literal valuetype SE.ScreenEffect ExplosionJosh3 = int32(76)
	.field public static literal valuetype SE.ScreenEffect SniperOverlay = int32(77)
	.field public static literal valuetype SE.ScreenEffect RampageOut = int32(78)
	.field public static literal valuetype SE.ScreenEffect Rampage = int32(79)
	.field public static literal valuetype SE.ScreenEffect DontTazemeBro = int32(80)

} // end of class SE.ScreenEffect

.class public auto ansi abstract sealed beforefieldinit SE.Control
	extends [mscorlib]System.Object
{
} // end of class SE.Control

.class public auto ansi sealed SE.InputGroups
	extends [mscorlib]System.Enum
{
	// Fields
	.field public specialname rtspecialname int32 value__
	.field public static literal valuetype SE.InputGroups Move = int32(0)
	.field public static literal valuetype SE.InputGroups Look = int32(1)
	.field public static literal valuetype SE.InputGroups Wheel = int32(2)
	.field public static literal valuetype SE.InputGroups CellphoneNavigate = int32(3)
	.field public static literal valuetype SE.InputGroups CellphoneNavigateUd = int32(4)
	.field public static literal valuetype SE.InputGroups CellphoneNavigateLr = int32(5)
	.field public static literal valuetype SE.InputGroups FrontendDpadAll = int32(6)
	.field public static literal valuetype SE.InputGroups FrontendDpadUd = int32(7)
	.field public static literal valuetype SE.InputGroups FrontendDpadLr = int32(8)
	.field public static literal valuetype SE.InputGroups FrontendLstickAll = int32(9)
	.field public static literal valuetype SE.InputGroups FrontendRstickAll = int32(10)
	.field public static literal valuetype SE.InputGroups FrontendGenericUd = int32(11)
	.field public static literal valuetype SE.InputGroups FrontendGenericLr = int32(12)
	.field public static literal valuetype SE.InputGroups FrontendGenericAll = int32(13)
	.field public static literal valuetype SE.InputGroups FrontendBumpers = int32(14)
	.field public static literal valuetype SE.InputGroups FrontendTriggers = int32(15)
	.field public static literal valuetype SE.InputGroups FrontendSticks = int32(16)
	.field public static literal valuetype SE.InputGroups ScriptDpadAll = int32(17)
	.field public static literal valuetype SE.InputGroups ScriptDpadUd = int32(18)
	.field public static literal valuetype SE.InputGroups ScriptDpadLr = int32(19)
	.field public static literal valuetype SE.InputGroups ScriptLstickAll = int32(20)
	.field public static literal valuetype SE.InputGroups ScriptRstickAll = int32(21)
	.field public static literal valuetype SE.InputGroups ScriptBumpers = int32(22)
	.field public static literal valuetype SE.InputGroups ScriptTriggers = int32(23)
	.field public static literal valuetype SE.InputGroups WeaponWheelCycle = int32(24)
	.field public static literal valuetype SE.InputGroups Fly = int32(25)
	.field public static literal valuetype SE.InputGroups Sub = int32(26)
	.field public static literal valuetype SE.InputGroups VehMoveAll = int32(27)
	.field public static literal valuetype SE.InputGroups Cursor = int32(28)
	.field public static literal valuetype SE.InputGroups CursorScroll = int32(29)
	.field public static literal valuetype SE.InputGroups SniperZoomSecondary = int32(30)
	.field public static literal valuetype SE.InputGroups VehHydraulicsControl = int32(31)

} // end of class SE.InputGroups

.class private auto ansi beforefieldinit SE.Extender
	extends [ScriptHookVDotNet2]GTA.Script
{
	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x2129
		// Header size: 1
		// Code size: 25 (0x19)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [ScriptHookVDotNet2]GTA.Script::.ctor()
		IL_0006: ldarg.0
		IL_0007: ldarg.0
		IL_0008: ldftn instance void SE.Extender::Initialize(object, class [mscorlib]System.EventArgs)
		IL_000e: newobj instance void [mscorlib]System.EventHandler::.ctor(object, native int)
		IL_0013: call instance void [ScriptHookVDotNet2]GTA.Script::add_Tick(class [mscorlib]System.EventHandler)
		IL_0018: ret
	} // end of method Extender::.ctor

	.method private hidebysig 
		instance void OnTick (
			object sender,
			class [mscorlib]System.EventArgs e
		) cil managed 
	{
		// Method begins at RVA 0x2143
		// Header size: 1
		// Code size: 1 (0x1)
		.maxstack 8

		IL_0000: ret
	} // end of method Extender::OnTick

	.method family hidebysig virtual 
		instance void Dispose (
			bool A_0
		) cil managed 
	{
		// Method begins at RVA 0x2145
		// Header size: 1
		// Code size: 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: pop
		IL_0002: ret
	} // end of method Extender::Dispose

	.method private hidebysig 
		instance void Initialize (
			object sender,
			class [mscorlib]System.EventArgs e
		) cil managed 
	{
		// Method begins at RVA 0x2149
		// Header size: 1
		// Code size: 47 (0x2f)
		.maxstack 8

		IL_0000: br.s IL_0007
		// loop start (head: IL_0007)
			IL_0002: call void [ScriptHookVDotNet2]GTA.Script::Yield()

			IL_0007: call bool [ScriptHookVDotNet2]GTA.Game::get_IsLoading()
			IL_000c: brtrue.s IL_0002
		// end loop

		IL_000e: ldarg.0
		IL_000f: call instance bool SE.Extender::IsUpdateAvailable()
		IL_0014: brfalse.s IL_001c

		IL_0016: ldarg.0
		IL_0017: call instance void SE.Extender::NotifyNewUpdate()

		IL_001c: ldarg.0
		IL_001d: ldarg.0
		IL_001e: ldftn instance void SE.Extender::Initialize(object, class [mscorlib]System.EventArgs)
		IL_0024: newobj instance void [mscorlib]System.EventHandler::.ctor(object, native int)
		IL_0029: call instance void [ScriptHookVDotNet2]GTA.Script::remove_Tick(class [mscorlib]System.EventHandler)
		IL_002e: ret
	} // end of method Extender::Initialize

	.method private hidebysig 
		instance bool IsUpdateAvailable () cil managed 
	{
		// Method begins at RVA 0x217c
		// Header size: 12
		// Code size: 117 (0x75)
		.maxstack 3
		.locals init (
			[0] class [System]System.Net.WebClient,
			[1] bool,
			[2] class [mscorlib]System.Exception
		)

		.try
		{
			IL_0000: newobj instance void [System]System.Net.WebClient::.ctor()
			IL_0005: stloc.0
			IL_0006: ldloc.0
			IL_0007: ldstr "https://raw.githubusercontent.com/Bob74/SHVDN-Extender/master/version"
			IL_000c: callvirt instance string [System]System.Net.WebClient::DownloadString(string)
			IL_0011: ldstr "\r"
			IL_0016: ldstr ""
			IL_001b: callvirt instance string [mscorlib]System.String::Replace(string, string)
			IL_0020: ldstr "\n"
			IL_0025: ldstr ""
			IL_002a: callvirt instance string [mscorlib]System.String::Replace(string, string)
			IL_002f: newobj instance void [mscorlib]System.Version::.ctor(string)
			IL_0034: ldloc.0
			IL_0035: callvirt instance void [System]System.ComponentModel.Component::Dispose()
			IL_003a: call class [mscorlib]System.Reflection.Assembly [mscorlib]System.Reflection.Assembly::GetExecutingAssembly()
			IL_003f: callvirt instance class [mscorlib]System.Reflection.AssemblyName [mscorlib]System.Reflection.Assembly::GetName()
			IL_0044: callvirt instance class [mscorlib]System.Version [mscorlib]System.Reflection.AssemblyName::get_Version()
			IL_0049: callvirt instance int32 [mscorlib]System.Version::CompareTo(class [mscorlib]System.Version)
			IL_004e: ldc.i4.0
			IL_004f: ble.s IL_0055

			IL_0051: ldc.i4.1
			IL_0052: stloc.1
			IL_0053: leave.s IL_0073

			IL_0055: ldc.i4.0
			IL_0056: stloc.1
			IL_0057: leave.s IL_0073
		} // end .try
		catch [mscorlib]System.Exception
		{
			IL_0059: stloc.2
			IL_005a: ldstr "Error: IsUpdateAvailable - "
			IL_005f: ldloc.2
			IL_0060: callvirt instance string [mscorlib]System.Exception::get_Message()
			IL_0065: call string [mscorlib]System.String::Concat(string, string)
			IL_006a: call void Logger::Log(object)
			IL_006f: leave.s IL_0071
		} // end handler

		IL_0071: ldc.i4.0
		IL_0072: ret

		IL_0073: ldloc.1
		IL_0074: ret
	} // end of method Extender::IsUpdateAvailable

	.method private hidebysig 
		instance void NotifyNewUpdate () cil managed 
	{
		// Method begins at RVA 0x2210
		// Header size: 1
		// Code size: 13 (0xd)
		.maxstack 8

		IL_0000: ldstr "SHVDN-Extender: A new update is available!"
		IL_0005: ldc.i4.1
		IL_0006: call class [ScriptHookVDotNet2]GTA.Notification [ScriptHookVDotNet2]GTA.UI::Notify(string, bool)
		IL_000b: pop
		IL_000c: ret
	} // end of method Extender::NotifyNewUpdate

} // end of class SE.Extender

.class public auto ansi abstract sealed beforefieldinit SE.Phone
	extends [mscorlib]System.Object
{
	// Methods
	.method public hidebysig static 
		void DestroyPhone (
			int32 handle
		) cil managed 
	{
		// Method begins at RVA 0x221e
		// Header size: 1
		// Code size: 30 (0x1e)
		.maxstack 8

		IL_0000: ldc.i8 4307800655868612759
		IL_0009: ldc.i4.1
		IL_000a: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_000f: dup
		IL_0010: ldc.i4.0
		IL_0011: ldarg.0
		IL_0012: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_0017: stelem.ref
		IL_0018: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_001d: ret
	} // end of method Phone::DestroyPhone

	.method public hidebysig static 
		string GetPhoneSoundSet () cil managed 
	{
		// Method begins at RVA 0x2240
		// Header size: 12
		// Code size: 74 (0x4a)
		.maxstack 2
		.locals init (
			[0] valuetype [ScriptHookVDotNet2]GTA.Model,
			[1] uint32
		)

		IL_0000: call class [ScriptHookVDotNet2]GTA.Player [ScriptHookVDotNet2]GTA.Game::get_Player()
		IL_0005: callvirt instance class [ScriptHookVDotNet2]GTA.Ped [ScriptHookVDotNet2]GTA.Player::get_Character()
		IL_000a: callvirt instance valuetype [ScriptHookVDotNet2]GTA.Model [ScriptHookVDotNet2]GTA.Entity::get_Model()
		IL_000f: stloc.0
		IL_0010: ldloca.s 0
		IL_0012: call instance int32 [ScriptHookVDotNet2]GTA.Model::get_Hash()
		IL_0017: stloc.1
		IL_0018: ldloc.1
		IL_0019: ldc.i4 225514697
		IL_001e: beq.s IL_0032

		IL_0020: ldloc.1
		IL_0021: ldc.i4 -1692214353
		IL_0026: beq.s IL_0038

		IL_0028: ldloc.1
		IL_0029: ldc.i4 -1686040670
		IL_002e: beq.s IL_003e

		IL_0030: br.s IL_0044

		IL_0032: ldstr "Phone_SoundSet_Michael"
		IL_0037: ret

		IL_0038: ldstr "Phone_SoundSet_Franklin"
		IL_003d: ret

		IL_003e: ldstr "Phone_SoundSet_Trevor"
		IL_0043: ret

		IL_0044: ldstr "Phone_SoundSet_Default"
		IL_0049: ret
	} // end of method Phone::GetPhoneSoundSet

} // end of class SE.Phone

.class public auto ansi abstract sealed beforefieldinit SE.Player
	extends [mscorlib]System.Object
{
	// Methods
	.method public hidebysig static 
		int32 GetCurrentCharacterID () cil managed 
	{
		// Method begins at RVA 0x2298
		// Header size: 12
		// Code size: 58 (0x3a)
		.maxstack 2
		.locals init (
			[0] valuetype [ScriptHookVDotNet2]GTA.Model,
			[1] uint32
		)

		IL_0000: call class [ScriptHookVDotNet2]GTA.Player [ScriptHookVDotNet2]GTA.Game::get_Player()
		IL_0005: callvirt instance class [ScriptHookVDotNet2]GTA.Ped [ScriptHookVDotNet2]GTA.Player::get_Character()
		IL_000a: callvirt instance valuetype [ScriptHookVDotNet2]GTA.Model [ScriptHookVDotNet2]GTA.Entity::get_Model()
		IL_000f: stloc.0
		IL_0010: ldloca.s 0
		IL_0012: call instance int32 [ScriptHookVDotNet2]GTA.Model::get_Hash()
		IL_0017: stloc.1
		IL_0018: ldloc.1
		IL_0019: ldc.i4 225514697
		IL_001e: beq.s IL_0032

		IL_0020: ldloc.1
		IL_0021: ldc.i4 -1692214353
		IL_0026: beq.s IL_0034

		IL_0028: ldloc.1
		IL_0029: ldc.i4 -1686040670
		IL_002e: beq.s IL_0036

		IL_0030: br.s IL_0038

		IL_0032: ldc.i4.0
		IL_0033: ret

		IL_0034: ldc.i4.1
		IL_0035: ret

		IL_0036: ldc.i4.2
		IL_0037: ret

		IL_0038: ldc.i4.m1
		IL_0039: ret
	} // end of method Player::GetCurrentCharacterID

	.method public hidebysig static 
		string GetCurrentCharacterName (
			[opt] bool full
		) cil managed 
	{
		.param [1] = bool(false)
		// Method begins at RVA 0x22e0
		// Header size: 12
		// Code size: 101 (0x65)
		.maxstack 2
		.locals init (
			[0] string,
			[1] int32
		)

		IL_0000: ldstr ""
		IL_0005: stloc.0
		IL_0006: call int32 SE.Player::GetCurrentCharacterID()
		IL_000b: stloc.1
		IL_000c: ldloc.1
		IL_000d: switch (IL_0020, IL_0035, IL_004a)

		IL_001e: br.s IL_005f

		IL_0020: ldarg.0
		IL_0021: brfalse.s IL_0029

		IL_0023: ldstr " De Santa"
		IL_0028: stloc.0

		IL_0029: ldstr "Michael"
		IL_002e: ldloc.0
		IL_002f: call string [mscorlib]System.String::Concat(string, string)
		IL_0034: ret

		IL_0035: ldarg.0
		IL_0036: brfalse.s IL_003e

		IL_0038: ldstr " Clinton"
		IL_003d: stloc.0

		IL_003e: ldstr "Franklin"
		IL_0043: ldloc.0
		IL_0044: call string [mscorlib]System.String::Concat(string, string)
		IL_0049: ret

		IL_004a: ldarg.0
		IL_004b: brfalse.s IL_0053

		IL_004d: ldstr " Philips"
		IL_0052: stloc.0

		IL_0053: ldstr "Trevor"
		IL_0058: ldloc.0
		IL_0059: call string [mscorlib]System.String::Concat(string, string)
		IL_005e: ret

		IL_005f: ldstr "Unknown"
		IL_0064: ret
	} // end of method Player::GetCurrentCharacterName

	.method public hidebysig static 
		bool AddCashToPlayer (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x2351
		// Header size: 1
		// Code size: 42 (0x2a)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.1
		IL_0004: ret

		IL_0005: call class [ScriptHookVDotNet2]GTA.Player [ScriptHookVDotNet2]GTA.Game::get_Player()
		IL_000a: callvirt instance int32 [ScriptHookVDotNet2]GTA.Player::get_Money()
		IL_000f: ldarg.0
		IL_0010: add
		IL_0011: ldc.i4.0
		IL_0012: blt.s IL_0028

		IL_0014: call class [ScriptHookVDotNet2]GTA.Player [ScriptHookVDotNet2]GTA.Game::get_Player()
		IL_0019: dup
		IL_001a: callvirt instance int32 [ScriptHookVDotNet2]GTA.Player::get_Money()
		IL_001f: ldarg.0
		IL_0020: add
		IL_0021: callvirt instance void [ScriptHookVDotNet2]GTA.Player::set_Money(int32)
		IL_0026: ldc.i4.1
		IL_0027: ret

		IL_0028: ldc.i4.0
		IL_0029: ret
	} // end of method Player::AddCashToPlayer

} // end of class SE.Player

.class public auto ansi abstract sealed beforefieldinit SE.Script
	extends [mscorlib]System.Object
{
	// Methods
	.method public hidebysig static 
		void StartScript (
			string scriptName,
			int32 buffer
		) cil managed 
	{
		// Method begins at RVA 0x237c
		// Header size: 12
		// Code size: 164 (0xa4)
		.maxstack 5

		IL_0000: ldc.i8 7977554008792313486
		IL_0009: ldc.i4.1
		IL_000a: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_000f: dup
		IL_0010: ldc.i4.0
		IL_0011: ldarg.0
		IL_0012: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_0017: stelem.ref
		IL_0018: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_001d: br.s IL_0041
		// loop start (head: IL_0041)
			IL_001f: ldc.i8 7977554008792313486
			IL_0028: ldc.i4.1
			IL_0029: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
			IL_002e: dup
			IL_002f: ldc.i4.0
			IL_0030: ldarg.0
			IL_0031: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
			IL_0036: stelem.ref
			IL_0037: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
			IL_003c: call void [ScriptHookVDotNet2]GTA.Script::Yield()

			IL_0041: ldc.i8 -1815901471284420879
			IL_004a: ldc.i4.1
			IL_004b: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
			IL_0050: dup
			IL_0051: ldc.i4.0
			IL_0052: ldarg.0
			IL_0053: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
			IL_0058: stelem.ref
			IL_0059: call !!0 [ScriptHookVDotNet2]GTA.Native.Function::Call<bool>(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
			IL_005e: brfalse.s IL_001f
		// end loop

		IL_0060: ldc.i8 -1723100001916064184
		IL_0069: ldc.i4.2
		IL_006a: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_006f: dup
		IL_0070: ldc.i4.0
		IL_0071: ldarg.0
		IL_0072: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_0077: stelem.ref
		IL_0078: dup
		IL_0079: ldc.i4.1
		IL_007a: ldarg.1
		IL_007b: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_0080: stelem.ref
		IL_0081: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_0086: ldc.i8 -3959458148337182644
		IL_008f: ldc.i4.1
		IL_0090: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_0095: dup
		IL_0096: ldc.i4.0
		IL_0097: ldarg.0
		IL_0098: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_009d: stelem.ref
		IL_009e: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_00a3: ret
	} // end of method Script::StartScript

	.method public hidebysig static 
		void TerminateScript (
			string scriptName
		) cil managed 
	{
		// Method begins at RVA 0x242c
		// Header size: 1
		// Code size: 30 (0x1e)
		.maxstack 8

		IL_0000: ldc.i8 -7077668788463384353
		IL_0009: ldc.i4.1
		IL_000a: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_000f: dup
		IL_0010: ldc.i4.0
		IL_0011: ldarg.0
		IL_0012: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_0017: stelem.ref
		IL_0018: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_001d: ret
	} // end of method Script::TerminateScript

} // end of class SE.Script

.class private auto ansi beforefieldinit SE.Tools
	extends [mscorlib]System.Object
{
	// Methods
	.method public hidebysig static 
		string ToHexString (
			string str
		) cil managed 
	{
		// Method begins at RVA 0x244c
		// Header size: 12
		// Code size: 62 (0x3e)
		.maxstack 3
		.locals init (
			[0] class [mscorlib]System.Text.StringBuilder,
			[1] uint8[],
			[2] int32,
			[3] uint8
		)

		IL_0000: newobj instance void [mscorlib]System.Text.StringBuilder::.ctor()
		IL_0005: stloc.0
		IL_0006: call class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_Unicode()
		IL_000b: ldarg.0
		IL_000c: callvirt instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
		IL_0011: stloc.1
		IL_0012: ldc.i4.0
		IL_0013: stloc.2
		IL_0014: br.s IL_0031
		// loop start (head: IL_0031)
			IL_0016: ldloc.1
			IL_0017: ldloc.2
			IL_0018: ldelem.u1
			IL_0019: stloc.3
			IL_001a: ldloc.0
			IL_001b: ldloca.s 3
			IL_001d: ldstr "X2"
			IL_0022: call instance string [mscorlib]System.Byte::ToString(string)
			IL_0027: callvirt instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
			IL_002c: pop
			IL_002d: ldloc.2
			IL_002e: ldc.i4.1
			IL_002f: add
			IL_0030: stloc.2

			IL_0031: ldloc.2
			IL_0032: ldloc.1
			IL_0033: ldlen
			IL_0034: conv.i4
			IL_0035: blt.s IL_0016
		// end loop

		IL_0037: ldloc.0
		IL_0038: callvirt instance string [mscorlib]System.Object::ToString()
		IL_003d: ret
	} // end of method Tools::ToHexString

	.method public hidebysig static 
		string FromHexString (
			string hexString
		) cil managed 
	{
		// Method begins at RVA 0x2498
		// Header size: 12
		// Code size: 60 (0x3c)
		.maxstack 5
		.locals init (
			[0] uint8[],
			[1] int32
		)

		IL_0000: ldarg.0
		IL_0001: callvirt instance int32 [mscorlib]System.String::get_Length()
		IL_0006: ldc.i4.2
		IL_0007: div
		IL_0008: newarr [mscorlib]System.Byte
		IL_000d: stloc.0
		IL_000e: ldc.i4.0
		IL_000f: stloc.1
		IL_0010: br.s IL_002a
		// loop start (head: IL_002a)
			IL_0012: ldloc.0
			IL_0013: ldloc.1
			IL_0014: ldarg.0
			IL_0015: ldloc.1
			IL_0016: ldc.i4.2
			IL_0017: mul
			IL_0018: ldc.i4.2
			IL_0019: callvirt instance string [mscorlib]System.String::Substring(int32, int32)
			IL_001e: ldc.i4.s 16
			IL_0020: call uint8 [mscorlib]System.Convert::ToByte(string, int32)
			IL_0025: stelem.i1
			IL_0026: ldloc.1
			IL_0027: ldc.i4.1
			IL_0028: add
			IL_0029: stloc.1

			IL_002a: ldloc.1
			IL_002b: ldloc.0
			IL_002c: ldlen
			IL_002d: conv.i4
			IL_002e: blt.s IL_0012
		// end loop

		IL_0030: call class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_Unicode()
		IL_0035: ldloc.0
		IL_0036: callvirt instance string [mscorlib]System.Text.Encoding::GetString(uint8[])
		IL_003b: ret
	} // end of method Tools::FromHexString

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x24e0
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [mscorlib]System.Object::.ctor()
		IL_0006: ret
	} // end of method Tools::.ctor

} // end of class SE.Tools

.class public auto ansi abstract sealed beforefieldinit SE.UI
	extends [mscorlib]System.Object
{
	// Methods
	.method public hidebysig static 
		void WaitAndhideUI (
			int32 duration
		) cil managed 
	{
		// Method begins at RVA 0x24e8
		// Header size: 12
		// Code size: 41 (0x29)
		.maxstack 2
		.locals init (
			[0] int32
		)

		IL_0000: call int32 [ScriptHookVDotNet2]GTA.Game::get_GameTime()
		IL_0005: ldarg.0
		IL_0006: add
		IL_0007: stloc.0
		// loop start (head: IL_0008)
			IL_0008: ldc.i8 8187532053442985248
			IL_0011: call !!0[] [mscorlib]System.Array::Empty<class [ScriptHookVDotNet2]GTA.Native.InputArgument>()
			IL_0016: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
			IL_001b: call void [ScriptHookVDotNet2]GTA.Script::Yield()
			IL_0020: ldloc.0
			IL_0021: call int32 [ScriptHookVDotNet2]GTA.Game::get_GameTime()
			IL_0026: bge.s IL_0008
		// end loop
		IL_0028: ret
	} // end of method UI::WaitAndhideUI

	.method public hidebysig static 
		void DisplayHelpTextThisFrame (
			string text
		) cil managed 
	{
		// Method begins at RVA 0x2520
		// Header size: 12
		// Code size: 119 (0x77)
		.maxstack 5

		IL_0000: ldc.i8 -8860350453193909743
		IL_0009: ldc.i4.1
		IL_000a: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_000f: dup
		IL_0010: ldc.i4.0
		IL_0011: ldstr "STRING"
		IL_0016: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_001b: stelem.ref
		IL_001c: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_0021: ldc.i8 7789129354908300458
		IL_002a: ldc.i4.1
		IL_002b: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_0030: dup
		IL_0031: ldc.i4.0
		IL_0032: ldarg.0
		IL_0033: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_0038: stelem.ref
		IL_0039: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_003e: ldc.i8 2562546386151446694
		IL_0047: ldc.i4.4
		IL_0048: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_004d: dup
		IL_004e: ldc.i4.0
		IL_004f: ldc.i4.0
		IL_0050: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_0055: stelem.ref
		IL_0056: dup
		IL_0057: ldc.i4.1
		IL_0058: ldc.i4.0
		IL_0059: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_005e: stelem.ref
		IL_005f: dup
		IL_0060: ldc.i4.2
		IL_0061: ldc.i4.1
		IL_0062: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_0067: stelem.ref
		IL_0068: dup
		IL_0069: ldc.i4.3
		IL_006a: ldc.i4.m1
		IL_006b: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_0070: stelem.ref
		IL_0071: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_0076: ret
	} // end of method UI::DisplayHelpTextThisFrame

	.method public hidebysig static 
		void DrawNotification (
			string text,
			[opt] bool sound
		) cil managed 
	{
		.param [2] = bool(false)
		// Method begins at RVA 0x25a4
		// Header size: 12
		// Code size: 124 (0x7c)
		.maxstack 5

		IL_0000: ldc.i8 2316831480196236324
		IL_0009: ldc.i4.1
		IL_000a: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_000f: dup
		IL_0010: ldc.i4.0
		IL_0011: ldstr "CELL_EMAIL_BCON"
		IL_0016: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_001b: stelem.ref
		IL_001c: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_0021: ldc.i8 7789129354908300458
		IL_002a: ldc.i4.1
		IL_002b: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_0030: dup
		IL_0031: ldc.i4.0
		IL_0032: ldstr "CELL_EMAIL_BCON"
		IL_0037: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_003c: stelem.ref
		IL_003d: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_0042: ldc.i8 3375311854262816803
		IL_004b: ldc.i4.2
		IL_004c: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_0051: dup
		IL_0052: ldc.i4.0
		IL_0053: ldc.i4.0
		IL_0054: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(bool)
		IL_0059: stelem.ref
		IL_005a: dup
		IL_005b: ldc.i4.1
		IL_005c: ldc.i4.1
		IL_005d: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(bool)
		IL_0062: stelem.ref
		IL_0063: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_0068: ldarg.1
		IL_0069: brfalse.s IL_007b

		IL_006b: ldstr "Text_Arrive_Tone"
		IL_0070: call string SE.Phone::GetPhoneSoundSet()
		IL_0075: call int32 [ScriptHookVDotNet2]GTA.Audio::PlaySoundFrontend(string, string)
		IL_007a: pop

		IL_007b: ret
	} // end of method UI::DrawNotification

	.method public hidebysig static 
		void DrawNotification (
			string picture,
			string title,
			string subtitle,
			string message,
			[opt] bool sound
		) cil managed 
	{
		.param [5] = bool(true)
		// Method begins at RVA 0x262c
		// Header size: 12
		// Code size: 271 (0x10f)
		.maxstack 5

		IL_0000: ldc.i8 -2332038263791780395
		IL_0009: ldc.i4.2
		IL_000a: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_000f: dup
		IL_0010: ldc.i4.0
		IL_0011: ldarg.0
		IL_0012: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_0017: stelem.ref
		IL_0018: dup
		IL_0019: ldc.i4.1
		IL_001a: ldc.i4.0
		IL_001b: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(bool)
		IL_0020: stelem.ref
		IL_0021: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_0026: br.s IL_002d
		// loop start (head: IL_002d)
			IL_0028: call void [ScriptHookVDotNet2]GTA.Script::Yield()

			IL_002d: ldc.i8 91750494399812324
			IL_0036: ldc.i4.1
			IL_0037: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
			IL_003c: dup
			IL_003d: ldc.i4.0
			IL_003e: ldarg.0
			IL_003f: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
			IL_0044: stelem.ref
			IL_0045: call !!0 [ScriptHookVDotNet2]GTA.Native.Function::Call<bool>(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
			IL_004a: brfalse.s IL_0028
		// end loop

		IL_004c: ldc.i8 2316831480196236324
		IL_0055: ldc.i4.1
		IL_0056: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_005b: dup
		IL_005c: ldc.i4.0
		IL_005d: ldstr "STRING"
		IL_0062: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_0067: stelem.ref
		IL_0068: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_006d: ldc.i8 7789129354908300458
		IL_0076: ldc.i4.1
		IL_0077: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_007c: dup
		IL_007d: ldc.i4.0
		IL_007e: ldarg.3
		IL_007f: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_0084: stelem.ref
		IL_0085: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_008a: ldc.i8 2075484565200204495
		IL_0093: ldc.i4.6
		IL_0094: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_0099: dup
		IL_009a: ldc.i4.0
		IL_009b: ldarg.0
		IL_009c: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_00a1: stelem.ref
		IL_00a2: dup
		IL_00a3: ldc.i4.1
		IL_00a4: ldarg.0
		IL_00a5: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_00aa: stelem.ref
		IL_00ab: dup
		IL_00ac: ldc.i4.2
		IL_00ad: ldc.i4.0
		IL_00ae: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(bool)
		IL_00b3: stelem.ref
		IL_00b4: dup
		IL_00b5: ldc.i4.3
		IL_00b6: ldc.i4.4
		IL_00b7: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_00bc: stelem.ref
		IL_00bd: dup
		IL_00be: ldc.i4.4
		IL_00bf: ldarg.1
		IL_00c0: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_00c5: stelem.ref
		IL_00c6: dup
		IL_00c7: ldc.i4.5
		IL_00c8: ldarg.2
		IL_00c9: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_00ce: stelem.ref
		IL_00cf: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_00d4: ldc.i8 3375311854262816803
		IL_00dd: ldc.i4.2
		IL_00de: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_00e3: dup
		IL_00e4: ldc.i4.0
		IL_00e5: ldc.i4.0
		IL_00e6: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(bool)
		IL_00eb: stelem.ref
		IL_00ec: dup
		IL_00ed: ldc.i4.1
		IL_00ee: ldc.i4.1
		IL_00ef: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(bool)
		IL_00f4: stelem.ref
		IL_00f5: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_00fa: ldarg.s sound
		IL_00fc: brfalse.s IL_010e

		IL_00fe: ldstr "Text_Arrive_Tone"
		IL_0103: call string SE.Phone::GetPhoneSoundSet()
		IL_0108: call int32 [ScriptHookVDotNet2]GTA.Audio::PlaySoundFrontend(string, string)
		IL_010d: pop

		IL_010e: ret
	} // end of method UI::DrawNotification

	.method public hidebysig static 
		void DrawText (
			string text,
			[opt] int32 font,
			[opt] bool centre,
			[opt] float32 x,
			[opt] float32 y,
			[opt] float32 scale,
			[opt] int32 r,
			[opt] int32 g,
			[opt] int32 b,
			[opt] int32 a
		) cil managed 
	{
		.param [2] = int32(0)
		.param [3] = bool(true)
		.param [4] = float32(0.5)
		.param [5] = float32(0.9)
		.param [6] = float32(1)
		.param [7] = int32(255)
		.param [8] = int32(255)
		.param [9] = int32(255)
		.param [10] = int32(255)
		// Method begins at RVA 0x2748
		// Header size: 12
		// Code size: 465 (0x1d1)
		.maxstack 5

		IL_0000: ldc.i8 7412968334783068634
		IL_0009: ldc.i4.1
		IL_000a: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_000f: dup
		IL_0010: ldc.i4.0
		IL_0011: ldarg.1
		IL_0012: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_0017: stelem.ref
		IL_0018: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_001d: ldc.i8 255613713711619320
		IL_0026: ldc.i4.1
		IL_0027: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_002c: dup
		IL_002d: ldc.i4.0
		IL_002e: ldc.i4.0
		IL_002f: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_0034: stelem.ref
		IL_0035: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_003a: ldc.i8 560759698880214217
		IL_0043: ldc.i4.2
		IL_0044: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_0049: dup
		IL_004a: ldc.i4.0
		IL_004b: ldarg.s scale
		IL_004d: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(float32)
		IL_0052: stelem.ref
		IL_0053: dup
		IL_0054: ldc.i4.1
		IL_0055: ldarg.s scale
		IL_0057: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(float32)
		IL_005c: stelem.ref
		IL_005d: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_0062: ldc.i8 -4725643803099155390
		IL_006b: ldc.i4.4
		IL_006c: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_0071: dup
		IL_0072: ldc.i4.0
		IL_0073: ldarg.s r
		IL_0075: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_007a: stelem.ref
		IL_007b: dup
		IL_007c: ldc.i4.1
		IL_007d: ldarg.s g
		IL_007f: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_0084: stelem.ref
		IL_0085: dup
		IL_0086: ldc.i4.2
		IL_0087: ldarg.s b
		IL_0089: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_008e: stelem.ref
		IL_008f: dup
		IL_0090: ldc.i4.3
		IL_0091: ldarg.s a
		IL_0093: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_0098: stelem.ref
		IL_0099: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_009e: ldc.i8 5070073224473199441
		IL_00a7: ldc.i4.5
		IL_00a8: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_00ad: dup
		IL_00ae: ldc.i4.0
		IL_00af: ldc.i4.0
		IL_00b0: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_00b5: stelem.ref
		IL_00b6: dup
		IL_00b7: ldc.i4.1
		IL_00b8: ldc.i4.0
		IL_00b9: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_00be: stelem.ref
		IL_00bf: dup
		IL_00c0: ldc.i4.2
		IL_00c1: ldc.i4.0
		IL_00c2: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_00c7: stelem.ref
		IL_00c8: dup
		IL_00c9: ldc.i4.3
		IL_00ca: ldc.i4.0
		IL_00cb: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_00d0: stelem.ref
		IL_00d1: dup
		IL_00d2: ldc.i4.4
		IL_00d3: ldc.i4 255
		IL_00d8: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_00dd: stelem.ref
		IL_00de: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_00e3: ldc.i8 4906112297440653222
		IL_00ec: ldc.i4.5
		IL_00ed: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_00f2: dup
		IL_00f3: ldc.i4.0
		IL_00f4: ldc.i4.1
		IL_00f5: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_00fa: stelem.ref
		IL_00fb: dup
		IL_00fc: ldc.i4.1
		IL_00fd: ldc.i4.0
		IL_00fe: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_0103: stelem.ref
		IL_0104: dup
		IL_0105: ldc.i4.2
		IL_0106: ldc.i4.0
		IL_0107: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_010c: stelem.ref
		IL_010d: dup
		IL_010e: ldc.i4.3
		IL_010f: ldc.i4.0
		IL_0110: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_0115: stelem.ref
		IL_0116: dup
		IL_0117: ldc.i4.4
		IL_0118: ldc.i4 255
		IL_011d: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_0122: stelem.ref
		IL_0123: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_0128: ldc.i8 2063750248883895902
		IL_0131: call !!0[] [mscorlib]System.Array::Empty<class [ScriptHookVDotNet2]GTA.Native.InputArgument>()
		IL_0136: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_013b: ldc.i8 2671724955187806462
		IL_0144: call !!0[] [mscorlib]System.Array::Empty<class [ScriptHookVDotNet2]GTA.Native.InputArgument>()
		IL_0149: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_014e: ldc.i8 -4598371208749279093
		IL_0157: ldc.i4.1
		IL_0158: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_015d: dup
		IL_015e: ldc.i4.0
		IL_015f: ldarg.2
		IL_0160: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(bool)
		IL_0165: stelem.ref
		IL_0166: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_016b: ldc.i8 2736978246810207435
		IL_0174: ldc.i4.1
		IL_0175: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_017a: dup
		IL_017b: ldc.i4.0
		IL_017c: ldstr "STRING"
		IL_0181: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_0186: stelem.ref
		IL_0187: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_018c: ldc.i8 7789129354908300458
		IL_0195: ldc.i4.1
		IL_0196: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_019b: dup
		IL_019c: ldc.i4.0
		IL_019d: ldarg.0
		IL_019e: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_01a3: stelem.ref
		IL_01a4: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_01a9: ldc.i8 -3674552073055540649
		IL_01b2: ldc.i4.2
		IL_01b3: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_01b8: dup
		IL_01b9: ldc.i4.0
		IL_01ba: ldarg.3
		IL_01bb: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(float32)
		IL_01c0: stelem.ref
		IL_01c1: dup
		IL_01c2: ldc.i4.1
		IL_01c3: ldarg.s y
		IL_01c5: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(float32)
		IL_01ca: stelem.ref
		IL_01cb: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_01d0: ret
	} // end of method UI::DrawText

	.method public hidebysig static 
		void DrawTexture (
			string fileName,
			int32 time,
			float32 x,
			float32 y,
			[opt] bool centre,
			[opt] int32 index,
			[opt] int32 level
		) cil managed 
	{
		.param [5] = bool(false)
		.param [6] = int32(0)
		.param [7] = int32(1)
		// Method begins at RVA 0x2928
		// Header size: 12
		// Code size: 48 (0x30)
		.maxstack 7
		.locals init (
			[0] class [System.Drawing]System.Drawing.Image,
			[1] valuetype [System.Drawing]System.Drawing.Point
		)

		IL_0000: ldarg.0
		IL_0001: call class [System.Drawing]System.Drawing.Image [System.Drawing]System.Drawing.Image::FromFile(string)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldarg.2
		IL_0009: ldarg.3
		IL_000a: ldarg.s centre
		IL_000c: call valuetype [System.Drawing]System.Drawing.Point SE.UI::GetSpriteCoordinatesFromFloat(class [System.Drawing]System.Drawing.Image, float32, float32, bool)
		IL_0011: stloc.1
		IL_0012: ldarg.0
		IL_0013: ldarg.s index
		IL_0015: ldarg.s level
		IL_0017: ldarg.1
		IL_0018: ldloc.1
		IL_0019: ldloc.0
		IL_001a: callvirt instance int32 [System.Drawing]System.Drawing.Image::get_Width()
		IL_001f: ldloc.0
		IL_0020: callvirt instance int32 [System.Drawing]System.Drawing.Image::get_Height()
		IL_0025: newobj instance void [System.Drawing]System.Drawing.Size::.ctor(int32, int32)
		IL_002a: call void [ScriptHookVDotNet2]GTA.UI::DrawTexture(string, int32, int32, int32, valuetype [System.Drawing]System.Drawing.Point, valuetype [System.Drawing]System.Drawing.Size)
		IL_002f: ret
	} // end of method UI::DrawTexture

	.method public hidebysig static 
		void DrawTexture (
			string fileName,
			int32 time,
			float32 x,
			float32 y,
			valuetype [System.Drawing]System.Drawing.Color color,
			[opt] bool centre,
			[opt] int32 index,
			[opt] int32 level
		) cil managed 
	{
		.param [6] = bool(false)
		.param [7] = int32(0)
		.param [8] = int32(1)
		// Method begins at RVA 0x2964
		// Header size: 12
		// Code size: 55 (0x37)
		.maxstack 8
		.locals init (
			[0] class [System.Drawing]System.Drawing.Image,
			[1] valuetype [System.Drawing]System.Drawing.Point
		)

		IL_0000: ldarg.0
		IL_0001: call class [System.Drawing]System.Drawing.Image [System.Drawing]System.Drawing.Image::FromFile(string)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldarg.2
		IL_0009: ldarg.3
		IL_000a: ldarg.s centre
		IL_000c: call valuetype [System.Drawing]System.Drawing.Point SE.UI::GetSpriteCoordinatesFromFloat(class [System.Drawing]System.Drawing.Image, float32, float32, bool)
		IL_0011: stloc.1
		IL_0012: ldarg.0
		IL_0013: ldarg.s index
		IL_0015: ldarg.s level
		IL_0017: ldarg.1
		IL_0018: ldloc.1
		IL_0019: ldloc.0
		IL_001a: callvirt instance int32 [System.Drawing]System.Drawing.Image::get_Width()
		IL_001f: ldloc.0
		IL_0020: callvirt instance int32 [System.Drawing]System.Drawing.Image::get_Height()
		IL_0025: newobj instance void [System.Drawing]System.Drawing.Size::.ctor(int32, int32)
		IL_002a: ldc.r4 0.0
		IL_002f: ldarg.s color
		IL_0031: call void [ScriptHookVDotNet2]GTA.UI::DrawTexture(string, int32, int32, int32, valuetype [System.Drawing]System.Drawing.Point, valuetype [System.Drawing]System.Drawing.Size, float32, valuetype [System.Drawing]System.Drawing.Color)
		IL_0036: ret
	} // end of method UI::DrawTexture

	.method public hidebysig static 
		valuetype [System.Drawing]System.Drawing.Point GetSpriteCoordinatesFromFloat (
			class [System.Drawing]System.Drawing.Image sprite,
			float32 x,
			float32 y,
			[opt] bool centre
		) cil managed 
	{
		.param [4] = bool(false)
		// Method begins at RVA 0x29a8
		// Header size: 12
		// Code size: 95 (0x5f)
		.maxstack 5
		.locals init (
			[0] class [ScriptHookVDotNet2]GTA.Native.OutputArgument,
			[1] class [ScriptHookVDotNet2]GTA.Native.OutputArgument,
			[2] int32,
			[3] int32
		)

		IL_0000: newobj instance void [ScriptHookVDotNet2]GTA.Native.OutputArgument::.ctor()
		IL_0005: stloc.0
		IL_0006: newobj instance void [ScriptHookVDotNet2]GTA.Native.OutputArgument::.ctor()
		IL_000b: stloc.1
		IL_000c: ldc.i8 -8607126675938462172
		IL_0015: ldc.i4.2
		IL_0016: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_001b: dup
		IL_001c: ldc.i4.0
		IL_001d: ldloc.0
		IL_001e: stelem.ref
		IL_001f: dup
		IL_0020: ldc.i4.1
		IL_0021: ldloc.1
		IL_0022: stelem.ref
		IL_0023: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_0028: ldloc.0
		IL_0029: callvirt instance !!0 [ScriptHookVDotNet2]GTA.Native.OutputArgument::GetResult<int32>()
		IL_002e: stloc.2
		IL_002f: ldloc.1
		IL_0030: callvirt instance !!0 [ScriptHookVDotNet2]GTA.Native.OutputArgument::GetResult<int32>()
		IL_0035: stloc.3
		IL_0036: ldarg.3
		IL_0037: brfalse.s IL_004f

		IL_0039: ldloc.2
		IL_003a: ldarg.0
		IL_003b: callvirt instance int32 [System.Drawing]System.Drawing.Image::get_Width()
		IL_0040: ldc.i4.2
		IL_0041: div
		IL_0042: sub
		IL_0043: stloc.2
		IL_0044: ldloc.3
		IL_0045: ldarg.0
		IL_0046: callvirt instance int32 [System.Drawing]System.Drawing.Image::get_Height()
		IL_004b: ldc.i4.2
		IL_004c: div
		IL_004d: sub
		IL_004e: stloc.3

		IL_004f: ldarg.1
		IL_0050: ldloc.2
		IL_0051: conv.r4
		IL_0052: mul
		IL_0053: conv.i4
		IL_0054: ldarg.2
		IL_0055: ldloc.3
		IL_0056: conv.r4
		IL_0057: mul
		IL_0058: conv.i4
		IL_0059: newobj instance void [System.Drawing]System.Drawing.Point::.ctor(int32, int32)
		IL_005e: ret
	} // end of method UI::GetSpriteCoordinatesFromFloat

	.method public hidebysig static 
		valuetype [System.Drawing]System.Drawing.Point GetScreenCoordinatesFromFloat (
			float32 x,
			float32 y
		) cil managed 
	{
		// Method begins at RVA 0x2a14
		// Header size: 12
		// Code size: 70 (0x46)
		.maxstack 5
		.locals init (
			[0] class [ScriptHookVDotNet2]GTA.Native.OutputArgument,
			[1] class [ScriptHookVDotNet2]GTA.Native.OutputArgument,
			[2] int32,
			[3] int32
		)

		IL_0000: newobj instance void [ScriptHookVDotNet2]GTA.Native.OutputArgument::.ctor()
		IL_0005: stloc.0
		IL_0006: newobj instance void [ScriptHookVDotNet2]GTA.Native.OutputArgument::.ctor()
		IL_000b: stloc.1
		IL_000c: ldc.i8 -8607126675938462172
		IL_0015: ldc.i4.2
		IL_0016: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_001b: dup
		IL_001c: ldc.i4.0
		IL_001d: ldloc.0
		IL_001e: stelem.ref
		IL_001f: dup
		IL_0020: ldc.i4.1
		IL_0021: ldloc.1
		IL_0022: stelem.ref
		IL_0023: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_0028: ldloc.0
		IL_0029: callvirt instance !!0 [ScriptHookVDotNet2]GTA.Native.OutputArgument::GetResult<int32>()
		IL_002e: stloc.2
		IL_002f: ldloc.1
		IL_0030: callvirt instance !!0 [ScriptHookVDotNet2]GTA.Native.OutputArgument::GetResult<int32>()
		IL_0035: stloc.3
		IL_0036: ldarg.0
		IL_0037: ldloc.2
		IL_0038: conv.r4
		IL_0039: mul
		IL_003a: conv.i4
		IL_003b: ldarg.1
		IL_003c: ldloc.3
		IL_003d: conv.r4
		IL_003e: mul
		IL_003f: conv.i4
		IL_0040: newobj instance void [System.Drawing]System.Drawing.Point::.ctor(int32, int32)
		IL_0045: ret
	} // end of method UI::GetScreenCoordinatesFromFloat

	.method public hidebysig static 
		valuetype [System.Drawing]System.Drawing.Size GetScreenResolution () cil managed 
	{
		// Method begins at RVA 0x2a68
		// Header size: 12
		// Code size: 60 (0x3c)
		.maxstack 5
		.locals init (
			[0] class [ScriptHookVDotNet2]GTA.Native.OutputArgument,
			[1] class [ScriptHookVDotNet2]GTA.Native.OutputArgument,
			[2] int32
		)

		IL_0000: newobj instance void [ScriptHookVDotNet2]GTA.Native.OutputArgument::.ctor()
		IL_0005: stloc.0
		IL_0006: newobj instance void [ScriptHookVDotNet2]GTA.Native.OutputArgument::.ctor()
		IL_000b: stloc.1
		IL_000c: ldc.i8 -8607126675938462172
		IL_0015: ldc.i4.2
		IL_0016: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_001b: dup
		IL_001c: ldc.i4.0
		IL_001d: ldloc.0
		IL_001e: stelem.ref
		IL_001f: dup
		IL_0020: ldc.i4.1
		IL_0021: ldloc.1
		IL_0022: stelem.ref
		IL_0023: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_0028: ldloc.0
		IL_0029: callvirt instance !!0 [ScriptHookVDotNet2]GTA.Native.OutputArgument::GetResult<int32>()
		IL_002e: ldloc.1
		IL_002f: callvirt instance !!0 [ScriptHookVDotNet2]GTA.Native.OutputArgument::GetResult<int32>()
		IL_0034: stloc.2
		IL_0035: ldloc.2
		IL_0036: newobj instance void [System.Drawing]System.Drawing.Size::.ctor(int32, int32)
		IL_003b: ret
	} // end of method UI::GetScreenResolution

} // end of class SE.UI

.class public auto ansi sealed SE.Wheel
	extends [mscorlib]System.Enum
{
	// Fields
	.field public specialname rtspecialname int32 value__
	.field public static literal valuetype SE.Wheel None = int32(-1)
	.field public static literal valuetype SE.Wheel FrontLeft = int32(0)
	.field public static literal valuetype SE.Wheel FrontRight = int32(1)
	.field public static literal valuetype SE.Wheel MiddleLeft = int32(2)
	.field public static literal valuetype SE.Wheel MiddleRight = int32(3)
	.field public static literal valuetype SE.Wheel RearLeft = int32(4)
	.field public static literal valuetype SE.Wheel RearRight = int32(5)
	.field public static literal valuetype SE.Wheel MiddleLeft6_2 = int32(45)
	.field public static literal valuetype SE.Wheel MiddleRight6_2 = int32(47)
	.field public static literal valuetype SE.Wheel MiddleLeft6 = int32(252)
	.field public static literal valuetype SE.Wheel MiddleRight6 = int32(256)

} // end of class SE.Wheel

.class public auto ansi abstract sealed beforefieldinit SE.Vehicle
	extends [mscorlib]System.Object
{
	// Nested Types
	.class nested private auto ansi sealed serializable beforefieldinit '<>c'
		extends [mscorlib]System.Object
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		.field public static initonly class SE.Vehicle/'<>c' '<>9'
		.field public static class [mscorlib]System.Func`2<char, bool> '<>9__11_0'

		// Methods
		.method private hidebysig specialname rtspecialname static 
			void .cctor () cil managed 
		{
			// Method begins at RVA 0x369d
			// Header size: 1
			// Code size: 11 (0xb)
			.maxstack 8

			IL_0000: newobj instance void SE.Vehicle/'<>c'::.ctor()
			IL_0005: stsfld class SE.Vehicle/'<>c' SE.Vehicle/'<>c'::'<>9'
			IL_000a: ret
		} // end of method '<>c'::.cctor

		.method public hidebysig specialname rtspecialname 
			instance void .ctor () cil managed 
		{
			// Method begins at RVA 0x24e0
			// Header size: 1
			// Code size: 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: call instance void [mscorlib]System.Object::.ctor()
			IL_0006: ret
		} // end of method '<>c'::.ctor

		.method assembly hidebysig 
			instance bool '<IsValidPlateNumber>b__11_0' (
				char ch
			) cil managed 
		{
			// Method begins at RVA 0x36a9
			// Header size: 1
			// Code size: 10 (0xa)
			.maxstack 8

			IL_0000: ldarg.1
			IL_0001: call bool [mscorlib]System.Char::IsLetterOrDigit(char)
			IL_0006: ldc.i4.0
			IL_0007: ceq
			IL_0009: ret
		} // end of method '<>c'::'<IsValidPlateNumber>b__11_0'

	} // end of class <>c


	// Fields
	.field public static initonly class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Wheel, string> WheelsBones

	// Methods
	.method public hidebysig static 
		string GetRandomNumberPlate () cil managed 
	{
		// Method begins at RVA 0x2ab0
		// Header size: 12
		// Code size: 154 (0x9a)
		.maxstack 4
		.locals init (
			[0] int32,
			[1] class [mscorlib]System.Random,
			[2] char
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldstr ""
		IL_0007: newobj instance void [mscorlib]System.Random::.ctor()
		IL_000c: stloc.1
		IL_000d: ldloc.1
		IL_000e: ldc.i4.0
		IL_000f: ldc.i4.s 99
		IL_0011: callvirt instance int32 [mscorlib]System.Random::Next(int32, int32)
		IL_0016: stloc.0
		IL_0017: ldloca.s 0
		IL_0019: ldstr "00"
		IL_001e: call instance string [mscorlib]System.Int32::ToString(string)
		IL_0023: call string [mscorlib]System.String::Concat(string, string)
		IL_0028: call int32 [ScriptHookVDotNet2]GTA.Game::get_GameTime()
		IL_002d: newobj instance void [mscorlib]System.Random::.ctor(int32)
		IL_0032: stloc.1
		IL_0033: ldloc.1
		IL_0034: ldc.i4.s 65
		IL_0036: ldc.i4.s 90
		IL_0038: callvirt instance int32 [mscorlib]System.Random::Next(int32, int32)
		IL_003d: conv.u2
		IL_003e: stloc.2
		IL_003f: ldloca.s 2
		IL_0041: call instance string [mscorlib]System.Char::ToString()
		IL_0046: call string [mscorlib]System.String::Concat(string, string)
		IL_004b: ldloc.1
		IL_004c: ldc.i4.s 65
		IL_004e: ldc.i4.s 90
		IL_0050: callvirt instance int32 [mscorlib]System.Random::Next(int32, int32)
		IL_0055: conv.u2
		IL_0056: stloc.2
		IL_0057: ldloca.s 2
		IL_0059: call instance string [mscorlib]System.Char::ToString()
		IL_005e: call string [mscorlib]System.String::Concat(string, string)
		IL_0063: ldloc.1
		IL_0064: ldc.i4.s 65
		IL_0066: ldc.i4.s 90
		IL_0068: callvirt instance int32 [mscorlib]System.Random::Next(int32, int32)
		IL_006d: conv.u2
		IL_006e: stloc.2
		IL_006f: ldloca.s 2
		IL_0071: call instance string [mscorlib]System.Char::ToString()
		IL_0076: call string [mscorlib]System.String::Concat(string, string)
		IL_007b: ldloc.1
		IL_007c: ldc.i4.0
		IL_007d: ldc.i4 999
		IL_0082: callvirt instance int32 [mscorlib]System.Random::Next(int32, int32)
		IL_0087: stloc.0
		IL_0088: ldloca.s 0
		IL_008a: ldstr "000"
		IL_008f: call instance string [mscorlib]System.Int32::ToString(string)
		IL_0094: call string [mscorlib]System.String::Concat(string, string)
		IL_0099: ret
	} // end of method Vehicle::GetRandomNumberPlate

	.method public hidebysig static 
		string GetModelName (
			class [ScriptHookVDotNet2]GTA.Vehicle veh
		) cil managed 
	{
		// Method begins at RVA 0x2b58
		// Header size: 12
		// Code size: 48 (0x30)
		.maxstack 5
		.locals init (
			[0] valuetype [ScriptHookVDotNet2]GTA.Model
		)

		IL_0000: ldc.i8 -5614393605194657767
		IL_0009: ldc.i4.1
		IL_000a: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_000f: dup
		IL_0010: ldc.i4.0
		IL_0011: ldarg.0
		IL_0012: callvirt instance valuetype [ScriptHookVDotNet2]GTA.Model [ScriptHookVDotNet2]GTA.Entity::get_Model()
		IL_0017: stloc.0
		IL_0018: ldloca.s 0
		IL_001a: call instance int32 [ScriptHookVDotNet2]GTA.Model::get_Hash()
		IL_001f: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_0024: stelem.ref
		IL_0025: call !!0 [ScriptHookVDotNet2]GTA.Native.Function::Call<string>(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_002a: call string [ScriptHookVDotNet2]GTA.Game::GetGXTEntry(string)
		IL_002f: ret
	} // end of method Vehicle::GetModelName

	.method public hidebysig static 
		string GetModelName (
			valuetype [ScriptHookVDotNet2]GTA.Native.VehicleHash hash
		) cil managed 
	{
		// Method begins at RVA 0x2b94
		// Header size: 1
		// Code size: 35 (0x23)
		.maxstack 8

		IL_0000: ldc.i8 -5614393605194657767
		IL_0009: ldc.i4.1
		IL_000a: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_000f: dup
		IL_0010: ldc.i4.0
		IL_0011: ldarg.0
		IL_0012: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_0017: stelem.ref
		IL_0018: call !!0 [ScriptHookVDotNet2]GTA.Native.Function::Call<string>(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_001d: call string [ScriptHookVDotNet2]GTA.Game::GetGXTEntry(string)
		IL_0022: ret
	} // end of method Vehicle::GetModelName

	.method public hidebysig static 
		string GetVehicleFriendlyName (
			class [ScriptHookVDotNet2]GTA.Vehicle veh,
			[opt] bool showClassName
		) cil managed 
	{
		.param [2] = bool(true)
		// Method begins at RVA 0x2bb8
		// Header size: 12
		// Code size: 200 (0xc8)
		.maxstack 5
		.locals init (
			[0] string,
			[1] int32,
			[2] string,
			[3] string,
			[4] valuetype [ScriptHookVDotNet2]GTA.Model
		)

		IL_0000: ldstr ""
		IL_0005: stloc.0
		IL_0006: ldc.i8 -2387157890592136704
		IL_000f: ldc.i4.1
		IL_0010: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_0015: dup
		IL_0016: ldc.i4.0
		IL_0017: ldarg.0
		IL_0018: callvirt instance valuetype [ScriptHookVDotNet2]GTA.Model [ScriptHookVDotNet2]GTA.Entity::get_Model()
		IL_001d: stloc.s 4
		IL_001f: ldloca.s 4
		IL_0021: call instance int32 [ScriptHookVDotNet2]GTA.Model::get_Hash()
		IL_0026: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_002b: stelem.ref
		IL_002c: call !!0 [ScriptHookVDotNet2]GTA.Native.Function::Call<int32>(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_0031: stloc.1
		IL_0032: ldstr "VEH_CLASS_"
		IL_0037: ldloca.s 1
		IL_0039: call instance string [mscorlib]System.Int32::ToString()
		IL_003e: call string [mscorlib]System.String::Concat(string, string)
		IL_0043: call string [ScriptHookVDotNet2]GTA.Game::GetGXTEntry(string)
		IL_0048: stloc.2
		IL_0049: ldc.i8 -5614393605194657767
		IL_0052: ldc.i4.1
		IL_0053: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_0058: dup
		IL_0059: ldc.i4.0
		IL_005a: ldarg.0
		IL_005b: callvirt instance valuetype [ScriptHookVDotNet2]GTA.Model [ScriptHookVDotNet2]GTA.Entity::get_Model()
		IL_0060: stloc.s 4
		IL_0062: ldloca.s 4
		IL_0064: call instance int32 [ScriptHookVDotNet2]GTA.Model::get_Hash()
		IL_0069: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_006e: stelem.ref
		IL_006f: call !!0 [ScriptHookVDotNet2]GTA.Native.Function::Call<string>(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_0074: call string [ScriptHookVDotNet2]GTA.Game::GetGXTEntry(string)
		IL_0079: stloc.3
		IL_007a: ldarg.1
		IL_007b: brfalse.s IL_00b4

		IL_007d: ldc.i4.6
		IL_007e: newarr [mscorlib]System.String
		IL_0083: dup
		IL_0084: ldc.i4.0
		IL_0085: ldloc.3
		IL_0086: stelem.ref
		IL_0087: dup
		IL_0088: ldc.i4.1
		IL_0089: ldstr " - "
		IL_008e: stelem.ref
		IL_008f: dup
		IL_0090: ldc.i4.2
		IL_0091: ldarg.0
		IL_0092: callvirt instance string [ScriptHookVDotNet2]GTA.Vehicle::get_NumberPlate()
		IL_0097: stelem.ref
		IL_0098: dup
		IL_0099: ldc.i4.3
		IL_009a: ldstr " ("
		IL_009f: stelem.ref
		IL_00a0: dup
		IL_00a1: ldc.i4.4
		IL_00a2: ldloc.2
		IL_00a3: stelem.ref
		IL_00a4: dup
		IL_00a5: ldc.i4.5
		IL_00a6: ldstr ")"
		IL_00ab: stelem.ref
		IL_00ac: call string [mscorlib]System.String::Concat(string[])
		IL_00b1: stloc.0
		IL_00b2: br.s IL_00c6

		IL_00b4: ldloc.3
		IL_00b5: ldstr " - "
		IL_00ba: ldarg.0
		IL_00bb: callvirt instance string [ScriptHookVDotNet2]GTA.Vehicle::get_NumberPlate()
		IL_00c0: call string [mscorlib]System.String::Concat(string, string, string)
		IL_00c5: stloc.0

		IL_00c6: ldloc.0
		IL_00c7: ret
	} // end of method Vehicle::GetVehicleFriendlyName

	.method public hidebysig static 
		bool IsPlayerOfficialVehicle (
			class [ScriptHookVDotNet2]GTA.Vehicle veh
		) cil managed 
	{
		// Method begins at RVA 0x2c8c
		// Header size: 12
		// Code size: 164 (0xa4)
		.maxstack 2
		.locals init (
			[0] valuetype [ScriptHookVDotNet2]GTA.Model
		)

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype [ScriptHookVDotNet2]GTA.Model [ScriptHookVDotNet2]GTA.Entity::get_Model()
		IL_0006: stloc.0
		IL_0007: ldloca.s 0
		IL_0009: call instance int32 [ScriptHookVDotNet2]GTA.Model::get_Hash()
		IL_000e: ldc.i4 -1008861746
		IL_0013: bne.un.s IL_0029

		IL_0015: ldarg.0
		IL_0016: callvirt instance string [ScriptHookVDotNet2]GTA.Vehicle::get_NumberPlate()
		IL_001b: ldstr "5MDS003 "
		IL_0020: call bool [mscorlib]System.String::op_Equality(string, string)
		IL_0025: brfalse.s IL_0029

		IL_0027: ldc.i4.1
		IL_0028: ret

		IL_0029: ldarg.0
		IL_002a: callvirt instance valuetype [ScriptHookVDotNet2]GTA.Model [ScriptHookVDotNet2]GTA.Entity::get_Model()
		IL_002f: stloc.0
		IL_0030: ldloca.s 0
		IL_0032: call instance int32 [ScriptHookVDotNet2]GTA.Model::get_Hash()
		IL_0037: ldc.i4 736902334
		IL_003c: bne.un.s IL_0050

		IL_003e: ldarg.0
		IL_003f: callvirt instance string [ScriptHookVDotNet2]GTA.Vehicle::get_NumberPlate()
		IL_0044: ldstr " FC1988 "
		IL_0049: call bool [mscorlib]System.String::op_Equality(string, string)
		IL_004e: brtrue.s IL_0077

		IL_0050: ldarg.0
		IL_0051: callvirt instance valuetype [ScriptHookVDotNet2]GTA.Model [ScriptHookVDotNet2]GTA.Entity::get_Model()
		IL_0056: stloc.0
		IL_0057: ldloca.s 0
		IL_0059: call instance int32 [ScriptHookVDotNet2]GTA.Model::get_Hash()
		IL_005e: ldc.i4 -2140431165
		IL_0063: bne.un.s IL_0079

		IL_0065: ldarg.0
		IL_0066: callvirt instance string [ScriptHookVDotNet2]GTA.Vehicle::get_NumberPlate()
		IL_006b: ldstr "  FC88  "
		IL_0070: call bool [mscorlib]System.String::op_Equality(string, string)
		IL_0075: brfalse.s IL_0079

		IL_0077: ldc.i4.1
		IL_0078: ret

		IL_0079: ldarg.0
		IL_007a: callvirt instance valuetype [ScriptHookVDotNet2]GTA.Model [ScriptHookVDotNet2]GTA.Entity::get_Model()
		IL_007f: stloc.0
		IL_0080: ldloca.s 0
		IL_0082: call instance int32 [ScriptHookVDotNet2]GTA.Model::get_Hash()
		IL_0087: ldc.i4 -1435919434
		IL_008c: bne.un.s IL_00a2

		IL_008e: ldarg.0
		IL_008f: callvirt instance string [ScriptHookVDotNet2]GTA.Vehicle::get_NumberPlate()
		IL_0094: ldstr "BETTY 32"
		IL_0099: call bool [mscorlib]System.String::op_Equality(string, string)
		IL_009e: brfalse.s IL_00a2

		IL_00a0: ldc.i4.1
		IL_00a1: ret

		IL_00a2: ldc.i4.0
		IL_00a3: ret
	} // end of method Vehicle::IsPlayerOfficialVehicle

	.method public hidebysig static 
		class [ScriptHookVDotNet2]GTA.Vehicle SpawnCopyVehicle (
			valuetype [ScriptHookVDotNet2]GTA.Math.Vector3 coordinates,
			float32 heading,
			class [ScriptHookVDotNet2]GTA.Vehicle oldVeh
		) cil managed 
	{
		// Method begins at RVA 0x2d3c
		// Header size: 12
		// Code size: 816 (0x330)
		.maxstack 8
		.locals init (
			[0] class [ScriptHookVDotNet2]GTA.Vehicle,
			[1] class [mscorlib]System.Collections.IEnumerator,
			[2] valuetype [ScriptHookVDotNet2]GTA.VehicleMod,
			[3] class [mscorlib]System.IDisposable,
			[4] valuetype [ScriptHookVDotNet2]GTA.VehicleToggleMod,
			[5] valuetype [ScriptHookVDotNet2]GTA.VehicleNeonLight,
			[6] int32,
			[7] class [mscorlib]System.Exception
		)

		IL_0000: ldarg.2
		IL_0001: callvirt instance valuetype [ScriptHookVDotNet2]GTA.Model [ScriptHookVDotNet2]GTA.Entity::get_Model()
		IL_0006: ldarg.0
		IL_0007: ldarg.1
		IL_0008: call class [ScriptHookVDotNet2]GTA.Vehicle [ScriptHookVDotNet2]GTA.World::CreateVehicle(valuetype [ScriptHookVDotNet2]GTA.Model, valuetype [ScriptHookVDotNet2]GTA.Math.Vector3, float32)
		IL_000d: stloc.0
		.try
		{
			IL_000e: ldloc.0
			IL_000f: ldarg.2
			IL_0010: callvirt instance string [ScriptHookVDotNet2]GTA.Vehicle::get_NumberPlate()
			IL_0015: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::set_NumberPlate(string)
			IL_001a: ldloc.0
			IL_001b: ldarg.2
			IL_001c: callvirt instance valuetype [ScriptHookVDotNet2]GTA.NumberPlateType [ScriptHookVDotNet2]GTA.Vehicle::get_NumberPlateType()
			IL_0021: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::set_NumberPlateType(valuetype [ScriptHookVDotNet2]GTA.NumberPlateType)
			IL_0026: ldloc.0
			IL_0027: ldarg.2
			IL_0028: callvirt instance valuetype [ScriptHookVDotNet2]GTA.VehicleWheelType [ScriptHookVDotNet2]GTA.Vehicle::get_WheelType()
			IL_002d: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::set_WheelType(valuetype [ScriptHookVDotNet2]GTA.VehicleWheelType)
			IL_0032: ldc.i8 -5507252750051666468
			IL_003b: ldc.i4.2
			IL_003c: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
			IL_0041: dup
			IL_0042: ldc.i4.0
			IL_0043: ldarg.2
			IL_0044: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(class [ScriptHookVDotNet2]GTA.Vehicle)
			IL_0049: stelem.ref
			IL_004a: dup
			IL_004b: ldc.i4.1
			IL_004c: ldc.i4.s 23
			IL_004e: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
			IL_0053: stelem.ref
			IL_0054: call !!0 [ScriptHookVDotNet2]GTA.Native.Function::Call<bool>(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
			IL_0059: pop
			IL_005a: ldc.i8 -5507252750051666468
			IL_0063: ldc.i4.2
			IL_0064: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
			IL_0069: dup
			IL_006a: ldc.i4.0
			IL_006b: ldarg.2
			IL_006c: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(class [ScriptHookVDotNet2]GTA.Vehicle)
			IL_0071: stelem.ref
			IL_0072: dup
			IL_0073: ldc.i4.1
			IL_0074: ldc.i4.s 24
			IL_0076: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
			IL_007b: stelem.ref
			IL_007c: call !!0 [ScriptHookVDotNet2]GTA.Native.Function::Call<bool>(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
			IL_0081: pop
			IL_0082: ldc.i8 3743304922253930013
			IL_008b: ldc.i4.1
			IL_008c: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
			IL_0091: dup
			IL_0092: ldc.i4.0
			IL_0093: ldarg.2
			IL_0094: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(class [ScriptHookVDotNet2]GTA.Vehicle)
			IL_0099: stelem.ref
			IL_009a: call !!0 [ScriptHookVDotNet2]GTA.Native.Function::Call<int32>(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
			IL_009f: brfalse IL_01c8

			IL_00a4: ldloc.0
			IL_00a5: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::InstallModKit()
			IL_00aa: ldtoken [ScriptHookVDotNet2]GTA.VehicleMod
			IL_00af: call class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
			IL_00b4: call class [mscorlib]System.Array [mscorlib]System.Enum::GetValues(class [mscorlib]System.Type)
			IL_00b9: callvirt instance class [mscorlib]System.Collections.IEnumerator [mscorlib]System.Array::GetEnumerator()
			IL_00be: stloc.1
			.try
			{
				IL_00bf: br IL_015b
				// loop start (head: IL_015b)
					IL_00c4: ldloc.1
					IL_00c5: callvirt instance object [mscorlib]System.Collections.IEnumerator::get_Current()
					IL_00ca: unbox.any [ScriptHookVDotNet2]GTA.VehicleMod
					IL_00cf: stloc.2
					IL_00d0: ldloc.2
					IL_00d1: ldc.i4.s 23
					IL_00d3: bne.un.s IL_010e

					IL_00d5: ldloc.0
					IL_00d6: ldc.i4.s 23
					IL_00d8: ldarg.2
					IL_00d9: ldc.i4.s 23
					IL_00db: callvirt instance int32 [ScriptHookVDotNet2]GTA.Vehicle::GetMod(valuetype [ScriptHookVDotNet2]GTA.VehicleMod)
					IL_00e0: ldc.i8 -5507252750051666468
					IL_00e9: ldc.i4.2
					IL_00ea: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
					IL_00ef: dup
					IL_00f0: ldc.i4.0
					IL_00f1: ldarg.2
					IL_00f2: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(class [ScriptHookVDotNet2]GTA.Vehicle)
					IL_00f7: stelem.ref
					IL_00f8: dup
					IL_00f9: ldc.i4.1
					IL_00fa: ldc.i4.s 23
					IL_00fc: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
					IL_0101: stelem.ref
					IL_0102: call !!0 [ScriptHookVDotNet2]GTA.Native.Function::Call<bool>(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
					IL_0107: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::SetMod(valuetype [ScriptHookVDotNet2]GTA.VehicleMod, int32, bool)
					IL_010c: br.s IL_015b

					IL_010e: ldloc.2
					IL_010f: ldc.i4.s 24
					IL_0111: bne.un.s IL_014c

					IL_0113: ldloc.0
					IL_0114: ldc.i4.s 23
					IL_0116: ldarg.2
					IL_0117: ldc.i4.s 23
					IL_0119: callvirt instance int32 [ScriptHookVDotNet2]GTA.Vehicle::GetMod(valuetype [ScriptHookVDotNet2]GTA.VehicleMod)
					IL_011e: ldc.i8 -5507252750051666468
					IL_0127: ldc.i4.2
					IL_0128: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
					IL_012d: dup
					IL_012e: ldc.i4.0
					IL_012f: ldarg.2
					IL_0130: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(class [ScriptHookVDotNet2]GTA.Vehicle)
					IL_0135: stelem.ref
					IL_0136: dup
					IL_0137: ldc.i4.1
					IL_0138: ldc.i4.s 24
					IL_013a: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
					IL_013f: stelem.ref
					IL_0140: call !!0 [ScriptHookVDotNet2]GTA.Native.Function::Call<bool>(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
					IL_0145: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::SetMod(valuetype [ScriptHookVDotNet2]GTA.VehicleMod, int32, bool)
					IL_014a: br.s IL_015b

					IL_014c: ldloc.0
					IL_014d: ldloc.2
					IL_014e: ldarg.2
					IL_014f: ldloc.2
					IL_0150: callvirt instance int32 [ScriptHookVDotNet2]GTA.Vehicle::GetMod(valuetype [ScriptHookVDotNet2]GTA.VehicleMod)
					IL_0155: ldc.i4.0
					IL_0156: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::SetMod(valuetype [ScriptHookVDotNet2]GTA.VehicleMod, int32, bool)

					IL_015b: ldloc.1
					IL_015c: callvirt instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
					IL_0161: brtrue IL_00c4
				// end loop

				IL_0166: leave.s IL_0179
			} // end .try
			finally
			{
				IL_0168: ldloc.1
				IL_0169: isinst [mscorlib]System.IDisposable
				IL_016e: stloc.3
				IL_016f: ldloc.3
				IL_0170: brfalse.s IL_0178

				IL_0172: ldloc.3
				IL_0173: callvirt instance void [mscorlib]System.IDisposable::Dispose()

				IL_0178: endfinally
			} // end handler

			IL_0179: ldtoken [ScriptHookVDotNet2]GTA.VehicleToggleMod
			IL_017e: call class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
			IL_0183: call class [mscorlib]System.Array [mscorlib]System.Enum::GetValues(class [mscorlib]System.Type)
			IL_0188: callvirt instance class [mscorlib]System.Collections.IEnumerator [mscorlib]System.Array::GetEnumerator()
			IL_018d: stloc.1
			.try
			{
				IL_018e: br.s IL_01ad
				// loop start (head: IL_01ad)
					IL_0190: ldloc.1
					IL_0191: callvirt instance object [mscorlib]System.Collections.IEnumerator::get_Current()
					IL_0196: unbox.any [ScriptHookVDotNet2]GTA.VehicleToggleMod
					IL_019b: stloc.s 4
					IL_019d: ldloc.0
					IL_019e: ldloc.s 4
					IL_01a0: ldarg.2
					IL_01a1: ldloc.s 4
					IL_01a3: callvirt instance bool [ScriptHookVDotNet2]GTA.Vehicle::IsToggleModOn(valuetype [ScriptHookVDotNet2]GTA.VehicleToggleMod)
					IL_01a8: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::ToggleMod(valuetype [ScriptHookVDotNet2]GTA.VehicleToggleMod, bool)

					IL_01ad: ldloc.1
					IL_01ae: callvirt instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
					IL_01b3: brtrue.s IL_0190
				// end loop

				IL_01b5: leave.s IL_01c8
			} // end .try
			finally
			{
				IL_01b7: ldloc.1
				IL_01b8: isinst [mscorlib]System.IDisposable
				IL_01bd: stloc.3
				IL_01be: ldloc.3
				IL_01bf: brfalse.s IL_01c7

				IL_01c1: ldloc.3
				IL_01c2: callvirt instance void [mscorlib]System.IDisposable::Dispose()

				IL_01c7: endfinally
			} // end handler

			IL_01c8: ldloc.0
			IL_01c9: ldarg.2
			IL_01ca: callvirt instance valuetype [ScriptHookVDotNet2]GTA.VehicleWindowTint [ScriptHookVDotNet2]GTA.Vehicle::get_WindowTint()
			IL_01cf: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::set_WindowTint(valuetype [ScriptHookVDotNet2]GTA.VehicleWindowTint)
			IL_01d4: ldloc.0
			IL_01d5: ldarg.2
			IL_01d6: callvirt instance valuetype [System.Drawing]System.Drawing.Color [ScriptHookVDotNet2]GTA.Vehicle::get_TireSmokeColor()
			IL_01db: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::set_TireSmokeColor(valuetype [System.Drawing]System.Drawing.Color)
			IL_01e0: ldloc.0
			IL_01e1: ldarg.2
			IL_01e2: callvirt instance bool [ScriptHookVDotNet2]GTA.Vehicle::get_CanTiresBurst()
			IL_01e7: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::set_CanTiresBurst(bool)
			IL_01ec: ldtoken [ScriptHookVDotNet2]GTA.VehicleNeonLight
			IL_01f1: call class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
			IL_01f6: call class [mscorlib]System.Array [mscorlib]System.Enum::GetValues(class [mscorlib]System.Type)
			IL_01fb: callvirt instance class [mscorlib]System.Collections.IEnumerator [mscorlib]System.Array::GetEnumerator()
			IL_0200: stloc.1
			.try
			{
				IL_0201: br.s IL_0220
				// loop start (head: IL_0220)
					IL_0203: ldloc.1
					IL_0204: callvirt instance object [mscorlib]System.Collections.IEnumerator::get_Current()
					IL_0209: unbox.any [ScriptHookVDotNet2]GTA.VehicleNeonLight
					IL_020e: stloc.s 5
					IL_0210: ldloc.0
					IL_0211: ldloc.s 5
					IL_0213: ldarg.2
					IL_0214: ldloc.s 5
					IL_0216: callvirt instance bool [ScriptHookVDotNet2]GTA.Vehicle::IsNeonLightsOn(valuetype [ScriptHookVDotNet2]GTA.VehicleNeonLight)
					IL_021b: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::SetNeonLightsOn(valuetype [ScriptHookVDotNet2]GTA.VehicleNeonLight, bool)

					IL_0220: ldloc.1
					IL_0221: callvirt instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
					IL_0226: brtrue.s IL_0203
				// end loop

				IL_0228: leave.s IL_023b
			} // end .try
			finally
			{
				IL_022a: ldloc.1
				IL_022b: isinst [mscorlib]System.IDisposable
				IL_0230: stloc.3
				IL_0231: ldloc.3
				IL_0232: brfalse.s IL_023a

				IL_0234: ldloc.3
				IL_0235: callvirt instance void [mscorlib]System.IDisposable::Dispose()

				IL_023a: endfinally
			} // end handler

			IL_023b: ldloc.0
			IL_023c: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::ClearCustomPrimaryColor()
			IL_0241: ldloc.0
			IL_0242: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::ClearCustomSecondaryColor()
			IL_0247: ldarg.2
			IL_0248: callvirt instance bool [ScriptHookVDotNet2]GTA.Vehicle::get_IsPrimaryColorCustom()
			IL_024d: brfalse.s IL_025b

			IL_024f: ldloc.0
			IL_0250: ldarg.2
			IL_0251: callvirt instance valuetype [System.Drawing]System.Drawing.Color [ScriptHookVDotNet2]GTA.Vehicle::get_CustomPrimaryColor()
			IL_0256: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::set_CustomPrimaryColor(valuetype [System.Drawing]System.Drawing.Color)

			IL_025b: ldarg.2
			IL_025c: callvirt instance bool [ScriptHookVDotNet2]GTA.Vehicle::get_IsSecondaryColorCustom()
			IL_0261: brfalse.s IL_026f

			IL_0263: ldloc.0
			IL_0264: ldarg.2
			IL_0265: callvirt instance valuetype [System.Drawing]System.Drawing.Color [ScriptHookVDotNet2]GTA.Vehicle::get_CustomSecondaryColor()
			IL_026a: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::set_CustomSecondaryColor(valuetype [System.Drawing]System.Drawing.Color)

			IL_026f: ldloc.0
			IL_0270: ldarg.2
			IL_0271: callvirt instance valuetype [ScriptHookVDotNet2]GTA.VehicleColor [ScriptHookVDotNet2]GTA.Vehicle::get_PrimaryColor()
			IL_0276: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::set_PrimaryColor(valuetype [ScriptHookVDotNet2]GTA.VehicleColor)
			IL_027b: ldloc.0
			IL_027c: ldarg.2
			IL_027d: callvirt instance valuetype [ScriptHookVDotNet2]GTA.VehicleColor [ScriptHookVDotNet2]GTA.Vehicle::get_SecondaryColor()
			IL_0282: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::set_SecondaryColor(valuetype [ScriptHookVDotNet2]GTA.VehicleColor)
			IL_0287: ldloc.0
			IL_0288: ldarg.2
			IL_0289: callvirt instance valuetype [ScriptHookVDotNet2]GTA.VehicleColor [ScriptHookVDotNet2]GTA.Vehicle::get_PearlescentColor()
			IL_028e: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::set_PearlescentColor(valuetype [ScriptHookVDotNet2]GTA.VehicleColor)
			IL_0293: ldloc.0
			IL_0294: ldarg.2
			IL_0295: callvirt instance valuetype [ScriptHookVDotNet2]GTA.VehicleColor [ScriptHookVDotNet2]GTA.Vehicle::get_RimColor()
			IL_029a: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::set_RimColor(valuetype [ScriptHookVDotNet2]GTA.VehicleColor)
			IL_029f: ldloc.0
			IL_02a0: ldarg.2
			IL_02a1: callvirt instance valuetype [ScriptHookVDotNet2]GTA.VehicleColor [ScriptHookVDotNet2]GTA.Vehicle::get_DashboardColor()
			IL_02a6: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::set_DashboardColor(valuetype [ScriptHookVDotNet2]GTA.VehicleColor)
			IL_02ab: ldloc.0
			IL_02ac: ldarg.2
			IL_02ad: callvirt instance valuetype [ScriptHookVDotNet2]GTA.VehicleColor [ScriptHookVDotNet2]GTA.Vehicle::get_TrimColor()
			IL_02b2: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::set_TrimColor(valuetype [ScriptHookVDotNet2]GTA.VehicleColor)
			IL_02b7: ldarg.2
			IL_02b8: callvirt instance bool [ScriptHookVDotNet2]GTA.Vehicle::get_IsConvertible()
			IL_02bd: brfalse.s IL_02cb

			IL_02bf: ldloc.0
			IL_02c0: ldarg.2
			IL_02c1: callvirt instance valuetype [ScriptHookVDotNet2]GTA.VehicleRoofState [ScriptHookVDotNet2]GTA.Vehicle::get_RoofState()
			IL_02c6: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::set_RoofState(valuetype [ScriptHookVDotNet2]GTA.VehicleRoofState)

			IL_02cb: ldc.i4.1
			IL_02cc: stloc.s 6
			IL_02ce: br.s IL_02e6
			// loop start (head: IL_02e6)
				IL_02d0: ldloc.0
				IL_02d1: ldloc.s 6
				IL_02d3: ldarg.2
				IL_02d4: ldloc.s 6
				IL_02d6: callvirt instance bool [ScriptHookVDotNet2]GTA.Vehicle::IsExtraOn(int32)
				IL_02db: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::ToggleExtra(int32, bool)
				IL_02e0: ldloc.s 6
				IL_02e2: ldc.i4.1
				IL_02e3: add
				IL_02e4: stloc.s 6

				IL_02e6: ldloc.s 6
				IL_02e8: ldc.i4.s 15
				IL_02ea: blt.s IL_02d0
			// end loop

			IL_02ec: ldloc.0
			IL_02ed: ldarg.2
			IL_02ee: callvirt instance int32 [ScriptHookVDotNet2]GTA.Vehicle::get_Livery()
			IL_02f3: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::set_Livery(int32)
			IL_02f8: ldloc.0
			IL_02f9: ldarg.2
			IL_02fa: call int32 SE.Vehicle::GetVehicleLivery2(class [ScriptHookVDotNet2]GTA.Vehicle)
			IL_02ff: call void SE.Vehicle::SetVehicleLivery2(class [ScriptHookVDotNet2]GTA.Vehicle, int32)
			IL_0304: ldloc.0
			IL_0305: ldc.i4.0
			IL_0306: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::set_NeedsToBeHotwired(bool)
			IL_030b: ldloc.0
			IL_030c: ldc.i4.0
			IL_030d: callvirt instance void [ScriptHookVDotNet2]GTA.Vehicle::set_IsStolen(bool)
			IL_0312: leave.s IL_032e
		} // end .try
		catch [mscorlib]System.Exception
		{
			IL_0314: stloc.s 7
			IL_0316: ldstr "Error: SpawnCopyVehicle - "
			IL_031b: ldloc.s 7
			IL_031d: callvirt instance string [mscorlib]System.Exception::get_Message()
			IL_0322: call string [mscorlib]System.String::Concat(string, string)
			IL_0327: call void [mscorlib]System.Console::Write(string)
			IL_032c: leave.s IL_032e
		} // end handler

		IL_032e: ldloc.0
		IL_032f: ret
	} // end of method Vehicle::SpawnCopyVehicle

	.method public hidebysig static 
		int32 GetVehicleLivery2Count (
			class [ScriptHookVDotNet2]GTA.Vehicle veh
		) cil managed 
	{
		// Method begins at RVA 0x30dc
		// Header size: 1
		// Code size: 30 (0x1e)
		.maxstack 8

		IL_0000: ldc.i8 6830623794211832020
		IL_0009: ldc.i4.1
		IL_000a: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_000f: dup
		IL_0010: ldc.i4.0
		IL_0011: ldarg.0
		IL_0012: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(class [ScriptHookVDotNet2]GTA.Vehicle)
		IL_0017: stelem.ref
		IL_0018: call !!0 [ScriptHookVDotNet2]GTA.Native.Function::Call<int32>(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_001d: ret
	} // end of method Vehicle::GetVehicleLivery2Count

	.method public hidebysig static 
		int32 GetVehicleLivery2 (
			class [ScriptHookVDotNet2]GTA.Vehicle veh
		) cil managed 
	{
		// Method begins at RVA 0x30fb
		// Header size: 1
		// Code size: 30 (0x1e)
		.maxstack 8

		IL_0000: ldc.i8 6924566214525471270
		IL_0009: ldc.i4.1
		IL_000a: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_000f: dup
		IL_0010: ldc.i4.0
		IL_0011: ldarg.0
		IL_0012: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(class [ScriptHookVDotNet2]GTA.Vehicle)
		IL_0017: stelem.ref
		IL_0018: call !!0 [ScriptHookVDotNet2]GTA.Native.Function::Call<int32>(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_001d: ret
	} // end of method Vehicle::GetVehicleLivery2

	.method public hidebysig static 
		void SetVehicleLivery2 (
			class [ScriptHookVDotNet2]GTA.Vehicle veh,
			int32 liveryNumber
		) cil managed 
	{
		// Method begins at RVA 0x311a
		// Header size: 1
		// Code size: 39 (0x27)
		.maxstack 8

		IL_0000: ldc.i8 -6425607022631767440
		IL_0009: ldc.i4.2
		IL_000a: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_000f: dup
		IL_0010: ldc.i4.0
		IL_0011: ldarg.0
		IL_0012: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(class [ScriptHookVDotNet2]GTA.Vehicle)
		IL_0017: stelem.ref
		IL_0018: dup
		IL_0019: ldc.i4.1
		IL_001a: ldarg.1
		IL_001b: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(int32)
		IL_0020: stelem.ref
		IL_0021: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_0026: ret
	} // end of method Vehicle::SetVehicleLivery2

	.method public hidebysig static 
		void SetVOTLAngle (
			class [ScriptHookVDotNet2]GTA.Vehicle veh,
			float32 angle
		) cil managed 
	{
		// Method begins at RVA 0x3142
		// Header size: 1
		// Code size: 39 (0x27)
		.maxstack 8

		IL_0000: ldc.i8 -7303571960782603982
		IL_0009: ldc.i4.2
		IL_000a: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_000f: dup
		IL_0010: ldc.i4.0
		IL_0011: ldarg.0
		IL_0012: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(class [ScriptHookVDotNet2]GTA.Vehicle)
		IL_0017: stelem.ref
		IL_0018: dup
		IL_0019: ldc.i4.1
		IL_001a: ldarg.1
		IL_001b: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(float32)
		IL_0020: stelem.ref
		IL_0021: call void [ScriptHookVDotNet2]GTA.Native.Function::Call(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_0026: ret
	} // end of method Vehicle::SetVOTLAngle

	.method public hidebysig static 
		bool IsValidPlateNumber (
			string plateNumber
		) cil managed 
	{
		// Method begins at RVA 0x316c
		// Header size: 12
		// Code size: 83 (0x53)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: callvirt instance int32 [mscorlib]System.String::get_Length()
		IL_0006: ldc.i4.8
		IL_0007: bgt.s IL_0051

		IL_0009: ldarg.0
		IL_000a: ldstr " "
		IL_000f: callvirt instance bool [mscorlib]System.String::Contains(string)
		IL_0014: brfalse.s IL_0028

		IL_0016: ldarg.0
		IL_0017: ldstr " "
		IL_001c: ldstr ""
		IL_0021: callvirt instance string [mscorlib]System.String::Replace(string, string)
		IL_0026: starg.s plateNumber

		IL_0028: ldarg.0
		IL_0029: ldsfld class [mscorlib]System.Func`2<char, bool> SE.Vehicle/'<>c'::'<>9__11_0'
		IL_002e: dup
		IL_002f: brtrue.s IL_0048

		IL_0031: pop
		IL_0032: ldsfld class SE.Vehicle/'<>c' SE.Vehicle/'<>c'::'<>9'
		IL_0037: ldftn instance bool SE.Vehicle/'<>c'::'<IsValidPlateNumber>b__11_0'(char)
		IL_003d: newobj instance void class [mscorlib]System.Func`2<char, bool>::.ctor(object, native int)
		IL_0042: dup
		IL_0043: stsfld class [mscorlib]System.Func`2<char, bool> SE.Vehicle/'<>c'::'<>9__11_0'

		IL_0048: call bool [System.Core]System.Linq.Enumerable::Any<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, class [mscorlib]System.Func`2<!!0, bool>)
		IL_004d: ldc.i4.0
		IL_004e: ceq
		IL_0050: ret

		IL_0051: ldc.i4.0
		IL_0052: ret
	} // end of method Vehicle::IsValidPlateNumber

	.method private hidebysig specialname rtspecialname static 
		void .cctor () cil managed 
	{
		// Method begins at RVA 0x31cc
		// Header size: 12
		// Code size: 141 (0x8d)
		.maxstack 4

		IL_0000: newobj instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Wheel, string>::.ctor()
		IL_0005: dup
		IL_0006: ldc.i4.0
		IL_0007: ldstr "wheel_lf"
		IL_000c: callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Wheel, string>::Add(!0, !1)
		IL_0011: dup
		IL_0012: ldc.i4.1
		IL_0013: ldstr "wheel_rf"
		IL_0018: callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Wheel, string>::Add(!0, !1)
		IL_001d: dup
		IL_001e: ldc.i4.2
		IL_001f: ldstr "wheel_lm1"
		IL_0024: callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Wheel, string>::Add(!0, !1)
		IL_0029: dup
		IL_002a: ldc.i4.3
		IL_002b: ldstr "wheel_rm1"
		IL_0030: callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Wheel, string>::Add(!0, !1)
		IL_0035: dup
		IL_0036: ldc.i4.s 45
		IL_0038: ldstr "wheel_lm2"
		IL_003d: callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Wheel, string>::Add(!0, !1)
		IL_0042: dup
		IL_0043: ldc.i4.s 47
		IL_0045: ldstr "wheel_rm2"
		IL_004a: callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Wheel, string>::Add(!0, !1)
		IL_004f: dup
		IL_0050: ldc.i4 252
		IL_0055: ldstr "wheel_lm3"
		IL_005a: callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Wheel, string>::Add(!0, !1)
		IL_005f: dup
		IL_0060: ldc.i4 256
		IL_0065: ldstr "wheel_rm3"
		IL_006a: callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Wheel, string>::Add(!0, !1)
		IL_006f: dup
		IL_0070: ldc.i4.4
		IL_0071: ldstr "wheel_lr"
		IL_0076: callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Wheel, string>::Add(!0, !1)
		IL_007b: dup
		IL_007c: ldc.i4.5
		IL_007d: ldstr "wheel_rr"
		IL_0082: callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Wheel, string>::Add(!0, !1)
		IL_0087: stsfld class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Wheel, string> SE.Vehicle::WheelsBones
		IL_008c: ret
	} // end of method Vehicle::.cctor

} // end of class SE.Vehicle

.class private auto ansi beforefieldinit SE.Windows
	extends [mscorlib]System.Object
{
	// Nested Types
	.class nested public auto ansi sealed VisualCVersion
		extends [mscorlib]System.Enum
	{
		// Fields
		.field public specialname rtspecialname int32 value__
		.field public static literal valuetype SE.Windows/VisualCVersion Visual_2017 = int32(0)
		.field public static literal valuetype SE.Windows/VisualCVersion Visual_2015 = int32(1)
		.field public static literal valuetype SE.Windows/VisualCVersion Visual_2013 = int32(2)
		.field public static literal valuetype SE.Windows/VisualCVersion Visual_2012 = int32(3)
		.field public static literal valuetype SE.Windows/VisualCVersion Visual_2010 = int32(4)
		.field public static literal valuetype SE.Windows/VisualCVersion Visual_2008 = int32(5)
		.field public static literal valuetype SE.Windows/VisualCVersion Visual_2005 = int32(6)

	} // end of class VisualCVersion


	// Fields
	.field private static initonly class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Windows/VisualCVersion, class [mscorlib]System.Version> visualCVersion

	// Methods
	.method public hidebysig static 
		bool IsVisualCVersionHigherOrEqual (
			valuetype SE.Windows/VisualCVersion visualC
		) cil managed 
	{
		// Method begins at RVA 0x3268
		// Header size: 12
		// Code size: 161 (0xa1)
		.maxstack 4
		.locals init (
			[0] class [mscorlib]System.Version,
			[1] class [mscorlib]System.Collections.Generic.List`1<string>,
			[2] string[],
			[3] int32,
			[4] string,
			[5] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<string>,
			[6] bool
		)

		IL_0000: ldsfld class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Windows/VisualCVersion, class [mscorlib]System.Version> SE.Windows::visualCVersion
		IL_0005: ldarg.0
		IL_0006: callvirt instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Windows/VisualCVersion, class [mscorlib]System.Version>::get_Item(!0)
		IL_000b: stloc.0
		IL_000c: ldc.i4.2
		IL_000d: newarr [mscorlib]System.String
		IL_0012: dup
		IL_0013: ldc.i4.0
		IL_0014: ldstr "msvcp*.dll"
		IL_0019: stelem.ref
		IL_001a: dup
		IL_001b: ldc.i4.1
		IL_001c: ldstr "msvcr*.dll"
		IL_0021: stelem.ref
		IL_0022: newobj instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor()
		IL_0027: stloc.1
		IL_0028: stloc.2
		IL_0029: ldc.i4.0
		IL_002a: stloc.3
		IL_002b: br.s IL_0048
		// loop start (head: IL_0048)
			IL_002d: ldloc.2
			IL_002e: ldloc.3
			IL_002f: ldelem.ref
			IL_0030: stloc.s 4
			IL_0032: ldloc.1
			IL_0033: call string [mscorlib]System.Environment::get_SystemDirectory()
			IL_0038: ldloc.s 4
			IL_003a: call string[] [mscorlib]System.IO.Directory::GetFiles(string, string)
			IL_003f: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<string>::AddRange(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
			IL_0044: ldloc.3
			IL_0045: ldc.i4.1
			IL_0046: add
			IL_0047: stloc.3

			IL_0048: ldloc.3
			IL_0049: ldloc.2
			IL_004a: ldlen
			IL_004b: conv.i4
			IL_004c: blt.s IL_002d
		// end loop

		IL_004e: ldloc.1
		IL_004f: callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<string>::GetEnumerator()
		IL_0054: stloc.s 5
		.try
		{
			IL_0056: br.s IL_0083
			// loop start (head: IL_0083)
				IL_0058: ldloca.s 5
				IL_005a: call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<string>::get_Current()
				IL_005f: dup
				IL_0060: newobj instance void [mscorlib]System.IO.FileInfo::.ctor(string)
				IL_0065: pop
				IL_0066: call class [System]System.Diagnostics.FileVersionInfo [System]System.Diagnostics.FileVersionInfo::GetVersionInfo(string)
				IL_006b: callvirt instance string [System]System.Diagnostics.FileVersionInfo::get_ProductVersion()
				IL_0070: newobj instance void [mscorlib]System.Version::.ctor(string)
				IL_0075: ldloc.0
				IL_0076: call instance int32 [mscorlib]System.Version::CompareTo(class [mscorlib]System.Version)
				IL_007b: ldc.i4.0
				IL_007c: blt.s IL_0083

				IL_007e: ldc.i4.1
				IL_007f: stloc.s 6
				IL_0081: leave.s IL_009e

				IL_0083: ldloca.s 5
				IL_0085: call instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<string>::MoveNext()
				IL_008a: brtrue.s IL_0058
			// end loop

			IL_008c: leave.s IL_009c
		} // end .try
		finally
		{
			IL_008e: ldloca.s 5
			IL_0090: constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<string>
			IL_0096: callvirt instance void [mscorlib]System.IDisposable::Dispose()
			IL_009b: endfinally
		} // end handler

		IL_009c: ldc.i4.0
		IL_009d: ret

		IL_009e: ldloc.s 6
		IL_00a0: ret
	} // end of method Windows::IsVisualCVersionHigherOrEqual

	.method public hidebysig static 
		class [mscorlib]System.Version GetNETFrameworkVersion () cil managed 
	{
		// Method begins at RVA 0x3328
		// Header size: 12
		// Code size: 280 (0x118)
		.maxstack 2
		.locals init (
			[0] class [mscorlib]Microsoft.Win32.RegistryKey,
			[1] int32,
			[2] class [mscorlib]System.Version
		)

		IL_0000: ldc.i4 -2147483646
		IL_0005: ldc.i4 512
		IL_000a: call class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::OpenBaseKey(valuetype [mscorlib]Microsoft.Win32.RegistryHive, valuetype [mscorlib]Microsoft.Win32.RegistryView)
		IL_000f: ldstr "SOFTWARE\\Microsoft\\NET Framework Setup\\NDP\\v4\\Full\\"
		IL_0014: callvirt instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::OpenSubKey(string)
		IL_0019: stloc.0
		.try
		{
			IL_001a: ldloc.0
			IL_001b: brfalse IL_00ff

			IL_0020: ldloc.0
			IL_0021: ldstr "Release"
			IL_0026: callvirt instance object [mscorlib]Microsoft.Win32.RegistryKey::GetValue(string)
			IL_002b: brfalse IL_00ff

			IL_0030: ldloc.0
			IL_0031: ldstr "Release"
			IL_0036: callvirt instance object [mscorlib]Microsoft.Win32.RegistryKey::GetValue(string)
			IL_003b: unbox.any [mscorlib]System.Int32
			IL_0040: stloc.1
			IL_0041: ldloc.1
			IL_0042: ldc.i4 461308
			IL_0047: blt.s IL_0059

			IL_0049: ldstr "4.7.1.0"
			IL_004e: newobj instance void [mscorlib]System.Version::.ctor(string)
			IL_0053: stloc.2
			IL_0054: leave IL_0116

			IL_0059: ldloc.1
			IL_005a: ldc.i4 460798
			IL_005f: blt.s IL_0071

			IL_0061: ldstr "4.7.0.0"
			IL_0066: newobj instance void [mscorlib]System.Version::.ctor(string)
			IL_006b: stloc.2
			IL_006c: leave IL_0116

			IL_0071: ldloc.1
			IL_0072: ldc.i4 394802
			IL_0077: blt.s IL_0089

			IL_0079: ldstr "4.6.2.0"
			IL_007e: newobj instance void [mscorlib]System.Version::.ctor(string)
			IL_0083: stloc.2
			IL_0084: leave IL_0116

			IL_0089: ldloc.1
			IL_008a: ldc.i4 394254
			IL_008f: blt.s IL_009e

			IL_0091: ldstr "4.6.1.0"
			IL_0096: newobj instance void [mscorlib]System.Version::.ctor(string)
			IL_009b: stloc.2
			IL_009c: leave.s IL_0116

			IL_009e: ldloc.1
			IL_009f: ldc.i4 393295
			IL_00a4: blt.s IL_00b3

			IL_00a6: ldstr "4.6.0.0"
			IL_00ab: newobj instance void [mscorlib]System.Version::.ctor(string)
			IL_00b0: stloc.2
			IL_00b1: leave.s IL_0116

			IL_00b3: ldloc.1
			IL_00b4: ldc.i4 379893
			IL_00b9: blt.s IL_00c8

			IL_00bb: ldstr "4.5.2.0"
			IL_00c0: newobj instance void [mscorlib]System.Version::.ctor(string)
			IL_00c5: stloc.2
			IL_00c6: leave.s IL_0116

			IL_00c8: ldloc.1
			IL_00c9: ldc.i4 378675
			IL_00ce: blt.s IL_00dd

			IL_00d0: ldstr "4.5.1.0"
			IL_00d5: newobj instance void [mscorlib]System.Version::.ctor(string)
			IL_00da: stloc.2
			IL_00db: leave.s IL_0116

			IL_00dd: ldloc.1
			IL_00de: ldc.i4 378389
			IL_00e3: blt.s IL_00f2

			IL_00e5: ldstr "4.5.0.0"
			IL_00ea: newobj instance void [mscorlib]System.Version::.ctor(string)
			IL_00ef: stloc.2
			IL_00f0: leave.s IL_0116

			IL_00f2: ldstr "4.0.0.0"
			IL_00f7: newobj instance void [mscorlib]System.Version::.ctor(string)
			IL_00fc: stloc.2
			IL_00fd: leave.s IL_0116

			IL_00ff: ldstr "0.0.0.0"
			IL_0104: newobj instance void [mscorlib]System.Version::.ctor(string)
			IL_0109: stloc.2
			IL_010a: leave.s IL_0116
		} // end .try
		finally
		{
			IL_010c: ldloc.0
			IL_010d: brfalse.s IL_0115

			IL_010f: ldloc.0
			IL_0110: callvirt instance void [mscorlib]System.IDisposable::Dispose()

			IL_0115: endfinally
		} // end handler

		IL_0116: ldloc.2
		IL_0117: ret
	} // end of method Windows::GetNETFrameworkVersion

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x24e0
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [mscorlib]System.Object::.ctor()
		IL_0006: ret
	} // end of method Windows::.ctor

	.method private hidebysig specialname rtspecialname static 
		void .cctor () cil managed 
	{
		// Method begins at RVA 0x345c
		// Header size: 12
		// Code size: 130 (0x82)
		.maxstack 4

		IL_0000: newobj instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Windows/VisualCVersion, class [mscorlib]System.Version>::.ctor()
		IL_0005: dup
		IL_0006: ldc.i4.0
		IL_0007: ldstr "14.1.0.0"
		IL_000c: newobj instance void [mscorlib]System.Version::.ctor(string)
		IL_0011: callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Windows/VisualCVersion, class [mscorlib]System.Version>::Add(!0, !1)
		IL_0016: dup
		IL_0017: ldc.i4.1
		IL_0018: ldstr "14.0.0.0"
		IL_001d: newobj instance void [mscorlib]System.Version::.ctor(string)
		IL_0022: callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Windows/VisualCVersion, class [mscorlib]System.Version>::Add(!0, !1)
		IL_0027: dup
		IL_0028: ldc.i4.2
		IL_0029: ldstr "12.0.0.0"
		IL_002e: newobj instance void [mscorlib]System.Version::.ctor(string)
		IL_0033: callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Windows/VisualCVersion, class [mscorlib]System.Version>::Add(!0, !1)
		IL_0038: dup
		IL_0039: ldc.i4.3
		IL_003a: ldstr "11.0.0.0"
		IL_003f: newobj instance void [mscorlib]System.Version::.ctor(string)
		IL_0044: callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Windows/VisualCVersion, class [mscorlib]System.Version>::Add(!0, !1)
		IL_0049: dup
		IL_004a: ldc.i4.4
		IL_004b: ldstr "10.0.0.0"
		IL_0050: newobj instance void [mscorlib]System.Version::.ctor(string)
		IL_0055: callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Windows/VisualCVersion, class [mscorlib]System.Version>::Add(!0, !1)
		IL_005a: dup
		IL_005b: ldc.i4.5
		IL_005c: ldstr "9.0.0.0"
		IL_0061: newobj instance void [mscorlib]System.Version::.ctor(string)
		IL_0066: callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Windows/VisualCVersion, class [mscorlib]System.Version>::Add(!0, !1)
		IL_006b: dup
		IL_006c: ldc.i4.6
		IL_006d: ldstr "8.0.0.0"
		IL_0072: newobj instance void [mscorlib]System.Version::.ctor(string)
		IL_0077: callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Windows/VisualCVersion, class [mscorlib]System.Version>::Add(!0, !1)
		IL_007c: stsfld class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype SE.Windows/VisualCVersion, class [mscorlib]System.Version> SE.Windows::visualCVersion
		IL_0081: ret
	} // end of method Windows::.cctor

} // end of class SE.Windows

.class public auto ansi abstract sealed beforefieldinit SE.World
	extends [mscorlib]System.Object
{
	// Methods
	.method public hidebysig static 
		void RequestIpl (
			string ipl
		) cil managed 
	{
		// Method begins at RVA 0x34ec
		// Header size: 12
		// Code size: 100 (0x64)
		.maxstack 5

		IL_0000: ldc.i8 -8599832514687978347
		IL_0009: ldc.i4.1
		IL_000a: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_000f: dup
		IL_0010: ldc.i4.0
		IL_0011: ldarg.0
		IL_0012: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_0017: stelem.ref
		IL_0018: call !!0 [ScriptHookVDotNet2]GTA.Native.Function::Call<bool>(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_001d: brtrue.s IL_0044

		IL_001f: ldc.i8 4734559983020792692
		IL_0028: ldc.i4.1
		IL_0029: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
		IL_002e: dup
		IL_002f: ldc.i4.0
		IL_0030: ldarg.0
		IL_0031: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
		IL_0036: stelem.ref
		IL_0037: call !!0 [ScriptHookVDotNet2]GTA.Native.Function::Call<bool>(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
		IL_003c: pop
		IL_003d: br.s IL_0044
		// loop start (head: IL_0044)
			IL_003f: call void [ScriptHookVDotNet2]GTA.Script::Yield()

			IL_0044: ldc.i8 -8599832514687978347
			IL_004d: ldc.i4.1
			IL_004e: newarr [ScriptHookVDotNet2]GTA.Native.InputArgument
			IL_0053: dup
			IL_0054: ldc.i4.0
			IL_0055: ldarg.0
			IL_0056: call class [ScriptHookVDotNet2]GTA.Native.InputArgument [ScriptHookVDotNet2]GTA.Native.InputArgument::op_Implicit(string)
			IL_005b: stelem.ref
			IL_005c: call !!0 [ScriptHookVDotNet2]GTA.Native.Function::Call<bool>(valuetype [ScriptHookVDotNet2]GTA.Native.Hash, class [ScriptHookVDotNet2]GTA.Native.InputArgument[])
			IL_0061: brfalse.s IL_003f
		// end loop

		IL_0063: ret
	} // end of method World::RequestIpl

	.method public hidebysig static 
		void DrawMarker (
			valuetype [ScriptHookVDotNet2]GTA.Math.Vector3 pos
		) cil managed 
	{
		// Method begins at RVA 0x355c
		// Header size: 12
		// Code size: 89 (0x59)
		.maxstack 9

		IL_0000: ldc.i4.1
		IL_0001: ldarg.0
		IL_0002: ldc.r4 0.0
		IL_0007: ldc.r4 0.0
		IL_000c: ldc.r4 0.0
		IL_0011: newobj instance void [ScriptHookVDotNet2]GTA.Math.Vector3::.ctor(float32, float32, float32)
		IL_0016: ldc.r4 0.0
		IL_001b: ldc.r4 0.0
		IL_0020: ldc.r4 0.0
		IL_0025: newobj instance void [ScriptHookVDotNet2]GTA.Math.Vector3::.ctor(float32, float32, float32)
		IL_002a: ldc.r4 2
		IL_002f: ldc.r4 2
		IL_0034: ldc.r4 0.5
		IL_0039: newobj instance void [ScriptHookVDotNet2]GTA.Math.Vector3::.ctor(float32, float32, float32)
		IL_003e: ldc.i4 128
		IL_0043: ldc.i4 255
		IL_0048: ldc.i4 255
		IL_004d: ldc.i4.0
		IL_004e: call valuetype [System.Drawing]System.Drawing.Color [System.Drawing]System.Drawing.Color::FromArgb(int32, int32, int32, int32)
		IL_0053: call void [ScriptHookVDotNet2]GTA.World::DrawMarker(valuetype [ScriptHookVDotNet2]GTA.MarkerType, valuetype [ScriptHookVDotNet2]GTA.Math.Vector3, valuetype [ScriptHookVDotNet2]GTA.Math.Vector3, valuetype [ScriptHookVDotNet2]GTA.Math.Vector3, valuetype [ScriptHookVDotNet2]GTA.Math.Vector3, valuetype [System.Drawing]System.Drawing.Color)
		IL_0058: ret
	} // end of method World::DrawMarker

	.method public hidebysig static 
		void DrawMarker (
			valuetype [ScriptHookVDotNet2]GTA.Math.Vector3 pos,
			valuetype [System.Drawing]System.Drawing.Color color
		) cil managed 
	{
		// Method begins at RVA 0x35c4
		// Header size: 12
		// Code size: 69 (0x45)
		.maxstack 7

		IL_0000: ldc.i4.1
		IL_0001: ldarg.0
		IL_0002: ldc.r4 0.0
		IL_0007: ldc.r4 0.0
		IL_000c: ldc.r4 0.0
		IL_0011: newobj instance void [ScriptHookVDotNet2]GTA.Math.Vector3::.ctor(float32, float32, float32)
		IL_0016: ldc.r4 0.0
		IL_001b: ldc.r4 0.0
		IL_0020: ldc.r4 0.0
		IL_0025: newobj instance void [ScriptHookVDotNet2]GTA.Math.Vector3::.ctor(float32, float32, float32)
		IL_002a: ldc.r4 2
		IL_002f: ldc.r4 2
		IL_0034: ldc.r4 0.5
		IL_0039: newobj instance void [ScriptHookVDotNet2]GTA.Math.Vector3::.ctor(float32, float32, float32)
		IL_003e: ldarg.1
		IL_003f: call void [ScriptHookVDotNet2]GTA.World::DrawMarker(valuetype [ScriptHookVDotNet2]GTA.MarkerType, valuetype [ScriptHookVDotNet2]GTA.Math.Vector3, valuetype [ScriptHookVDotNet2]GTA.Math.Vector3, valuetype [ScriptHookVDotNet2]GTA.Math.Vector3, valuetype [ScriptHookVDotNet2]GTA.Math.Vector3, valuetype [System.Drawing]System.Drawing.Color)
		IL_0044: ret
	} // end of method World::DrawMarker

	.method public hidebysig static 
		void DrawMarker (
			valuetype [ScriptHookVDotNet2]GTA.MarkerType marker,
			valuetype [ScriptHookVDotNet2]GTA.Math.Vector3 pos,
			valuetype [ScriptHookVDotNet2]GTA.Math.Vector3 scale
		) cil managed 
	{
		// Method begins at RVA 0x3618
		// Header size: 12
		// Code size: 70 (0x46)
		.maxstack 9

		IL_0000: ldc.i4.1
		IL_0001: ldarg.1
		IL_0002: ldc.r4 0.0
		IL_0007: ldc.r4 0.0
		IL_000c: ldc.r4 0.0
		IL_0011: newobj instance void [ScriptHookVDotNet2]GTA.Math.Vector3::.ctor(float32, float32, float32)
		IL_0016: ldc.r4 0.0
		IL_001b: ldc.r4 0.0
		IL_0020: ldc.r4 0.0
		IL_0025: newobj instance void [ScriptHookVDotNet2]GTA.Math.Vector3::.ctor(float32, float32, float32)
		IL_002a: ldarg.2
		IL_002b: ldc.i4 128
		IL_0030: ldc.i4 255
		IL_0035: ldc.i4 255
		IL_003a: ldc.i4.0
		IL_003b: call valuetype [System.Drawing]System.Drawing.Color [System.Drawing]System.Drawing.Color::FromArgb(int32, int32, int32, int32)
		IL_0040: call void [ScriptHookVDotNet2]GTA.World::DrawMarker(valuetype [ScriptHookVDotNet2]GTA.MarkerType, valuetype [ScriptHookVDotNet2]GTA.Math.Vector3, valuetype [ScriptHookVDotNet2]GTA.Math.Vector3, valuetype [ScriptHookVDotNet2]GTA.Math.Vector3, valuetype [ScriptHookVDotNet2]GTA.Math.Vector3, valuetype [System.Drawing]System.Drawing.Color)
		IL_0045: ret
	} // end of method World::DrawMarker

	.method public hidebysig static 
		void DrawMarker (
			valuetype [ScriptHookVDotNet2]GTA.MarkerType marker,
			valuetype [ScriptHookVDotNet2]GTA.Math.Vector3 pos,
			valuetype [ScriptHookVDotNet2]GTA.Math.Vector3 scale,
			valuetype [System.Drawing]System.Drawing.Color color
		) cil managed 
	{
		// Method begins at RVA 0x366a
		// Header size: 1
		// Code size: 50 (0x32)
		.maxstack 8

		IL_0000: ldc.i4.1
		IL_0001: ldarg.1
		IL_0002: ldc.r4 0.0
		IL_0007: ldc.r4 0.0
		IL_000c: ldc.r4 0.0
		IL_0011: newobj instance void [ScriptHookVDotNet2]GTA.Math.Vector3::.ctor(float32, float32, float32)
		IL_0016: ldc.r4 0.0
		IL_001b: ldc.r4 0.0
		IL_0020: ldc.r4 0.0
		IL_0025: newobj instance void [ScriptHookVDotNet2]GTA.Math.Vector3::.ctor(float32, float32, float32)
		IL_002a: ldarg.2
		IL_002b: ldarg.3
		IL_002c: call void [ScriptHookVDotNet2]GTA.World::DrawMarker(valuetype [ScriptHookVDotNet2]GTA.MarkerType, valuetype [ScriptHookVDotNet2]GTA.Math.Vector3, valuetype [ScriptHookVDotNet2]GTA.Math.Vector3, valuetype [ScriptHookVDotNet2]GTA.Math.Vector3, valuetype [ScriptHookVDotNet2]GTA.Math.Vector3, valuetype [System.Drawing]System.Drawing.Color)
		IL_0031: ret
	} // end of method World::DrawMarker

} // end of class SE.World

