extends Character

func _init():
	id = "nova"
	
	npcArmor = {
		DamageType.Physical: 10,
	}
	npcStats = {
		Stat.Sexiness: 1,
	}
	npcLevel = 2
	npcLustInterests = {
		InterestTopic.TallyMarks: Interest.Loves,
		InterestTopic.Bodywritings: Interest.Loves,
		InterestTopic.Gags: Interest.Likes,
		InterestTopic.Blindfolds: Interest.Likes,
		InterestTopic.BDSMRestraints: Interest.Loves,
		InterestTopic.ButtPlugs: Interest.ReallyLikes,
		InterestTopic.VaginalPlugs: Interest.ReallyLikes,
		InterestTopic.FeminineBody: Interest.ReallyLikes,
		InterestTopic.AndroBody: Interest.ReallyDislikes,
		InterestTopic.SlimBody: Interest.KindaLikes,
		InterestTopic.ThickButt: Interest.Loves,
		InterestTopic.AverageButt: Interest.KindaLikes,
		InterestTopic.SlimButt: Interest.SlightlyDislikes,
		InterestTopic.NoBreasts: Interest.SlightlyDislikes,
		InterestTopic.SmallBreasts: Interest.KindaLikes,
		InterestTopic.MediumBreasts: Interest.Loves,
		InterestTopic.BigBreasts: Interest.ReallyLikes,
		InterestTopic.StuffedPussy: Interest.Loves,
		InterestTopic.StuffedPussyOrAss: Interest.Loves,
		InterestTopic.StuffedThroat: Interest.Likes,
		InterestTopic.CoveredInCum: Interest.Likes,
		InterestTopic.CoveredInLotsOfCum: Interest.Loves,
		InterestTopic.FullyNaked: Interest.KindaLikes,
		InterestTopic.ExposedPussy: Interest.ReallyLikes,
		InterestTopic.ExposedAnus: Interest.Likes,
		InterestTopic.ExposedBreasts: Interest.Likes,
		InterestTopic.ExposedPanties: Interest.Dislikes,
		InterestTopic.ExposedBra: Interest.Dislikes,
		InterestTopic.LooseAnus: Interest.KindaLikes,
		InterestTopic.LoosePussy: Interest.KindaLikes,
		InterestTopic.TightAnus: Interest.Loves,
		InterestTopic.TightPussy: Interest.Loves,
		InterestTopic.HasVaginaOnly: Interest.ReallyLikes,
		InterestTopic.HasVaginaAndCock: Interest.Loves,
		InterestTopic.BigCock: Interest.Likes,
		InterestTopic.SmallCock: Interest.ReallyLikes,
		InterestTopic.HasCockOnly: Interest.ReallyDislikes,
	}
	
func _getName():
	return "Nova"

func getGender():
	return Gender.Androgynous
	
func getPronounGender():
	return Gender.Female
	
func getSmallDescription() -> String:
	return "Gray husky that wears hi-tech guard armor. Medium height, fit body"

func getSpecies():
	return ["canine"]

func _getAttacks():
	return ["stunbatonAttack", "stunbatonOverchargeAttack", "AIHumiliateMommy", "shoveattack", "trygetupattack"]

func getFightIntro(_battleName):
	var mes = "Nova’s power armor lights up as she grabs her trusty stun baton and directs her attention to you."
	mes += "\n\n"
	return mes+formatSay("You have no right to remain silent, anything I say will be used against you. Come here, sweetie~")

func getLoot(_battleName):
	return {"credits": 1}

func getPenisSize():
	return 18.0
