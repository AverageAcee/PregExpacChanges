extends ItemBase

func _init():
	id = "lube"

func getVisibleName():
	return "Lube"
	
func getDescription():
	return "Personal lubricant that is water-based, insuring no irritation. Works both for vaginal and anal use, your orifices recover faster and don't stretch as much"

func canUseInCombat():
	return true

func useInCombat(_attacker, _reciever):
	_attacker.addEffect(StatusEffect.LubedUp, [8*60*60])
	removeXOrDestroy(1)
	return _attacker.getName() + " applied lube!"

func getPossibleActions():
	return [
		{
			"name": "Apply",
			"scene": "UseItemLikeInCombatScene",
			"description": "Apply the lube",
		},
	]

func getPrice():
	return 0

func canSell():
	return true

func canCombine():
	return true