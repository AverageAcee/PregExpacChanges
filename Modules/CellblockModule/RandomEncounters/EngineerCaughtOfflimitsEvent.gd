extends EventBase

func _init():
	id = "EngineerCaughtOfflimitsEvent"

func registerTriggers(es):
	es.addTrigger(self, Trigger.CaughtOffLimitsByEnginner)

func react(_triggerID, _args):
	var encounterLevel = RNG.randi_range(0, 5)
	if(_args.size() > 0):
		encounterLevel = _args[0]
	
	var idToUse = grabNpcIDFromPoolOrGenerate(CharacterPool.Engineers, [], EngineerGenerator.new(), {NpcGen.Level: encounterLevel})
	
	if(idToUse == null || idToUse == ""):
		return false
		
	runScene("EngineerCaughtOfflimitsScene", [idToUse])

	return true

func getPriority():
	return 10
