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

	public class DamageWorker_Instakill : DamageWorker_AddInjury
	{
		protected override BodyPartRecord ChooseHitPart(DamageInfo dinfo, Pawn pawn)
		{
			return pawn.health.hediffSet.GetBrain();
		}
	}
}
