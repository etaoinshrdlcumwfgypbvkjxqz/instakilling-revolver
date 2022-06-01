using Verse;

namespace Polyipseity.RimWorld.InstakillingRevolver
{
	public class EarlyModStartup : Mod
	{
		public EarlyModStartup(ModContentPack content) : base(content) { }
	}

	[StaticConstructorOnStartup]
	public static class ModStartup
	{
		public const string ID = nameof(Polyipseity.RimWorld.InstakillingRevolver);

		static ModStartup() { }
	}
}
