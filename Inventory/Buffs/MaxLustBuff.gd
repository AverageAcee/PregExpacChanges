extends BuffBase

var amount = 0

func _init():
	id = Buff.MaxLustBuff

func initBuff(_args):
	amount = _args[0]

func getVisibleDescription():
	var text = str(amount)
	if(amount > 0):
		text = "+"+text
	return "Lust threshold "+text

func apply(_buffHolder):
	_buffHolder.extraLust += amount

func getBuffColor():
	if(amount < 0):
		return Color.red
	return DamageType.getColor(DamageType.Lust)