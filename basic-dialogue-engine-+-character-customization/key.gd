extends Node
@onready var engine = get_node("/root/Dialogue_Engine")
@export var props = load("res://dialogueresources.tres")
var options : Array 
var options2 : Array
var d = {1 : ["Hello! I am Place Holder."], 2 : ["Yeah? You got a problem?"], 3 : ["Strange? It's ethnic. German."], 4 : ["Good..."], 5 : ["Anyway, today I will be helping you create your online avatar."], 6 : ["I have quite the eye for fashion, so just give me abstract ideas and I'll create the new perfect you."], 7 : ["Are you lighter or darker skinned?"], 8 : ["Are you a hat person?"], 9 : ["Just basic hats or something... hardcore?"], 10 : ["Would you say you're a fighter, a chill guy/gal, or bush?"], 11: ["Knew you'd say that"], 12 : ["Since you apparently hate hats, do you prefer shorter or longer hair?"], 13 : ["Feminine or masculine hairstyle?"], 14 : ["Round, pointy, spikey? (you'll see what I mean)"], 15 : ["Since my creator is pretty lazy, for your final question..."], 16 : ["Would you prefer to wear a T-shirt or a hoodie?"], 17 : ["Perfect! Computing avatar now..."]}
var o = {1 : ["That's your name?"], 2 : ["No, it's just... strange", "Not at all", "sorry"], 3 : ["Next."], 4 : ["Next."], 5 : ["Next."], 6 : ["Next."], 7 : ["Lighter.", "Darker."], 8 : ["Yes.", "No."], 9 : ["Vanilla stuff.", "Hardcore."], 10 : ["I'm quite the agressor.", "Pretty calm, chill.", "Bush"], 11 : ["Next."], 12 : ["Short.", "Something inbetween.", "Longer."], 13 : ["Feminine.", "Masculine."], 14 : ["Round.", "Pointy.", "Spikey."], 15 : ["Next."], 16 : ["T-shirt.", "Hoodie."], 17 : ["Next."]}
var o2 = { 1 : [2], 2 : [3, 4, 4], 3 : [5], 4 : [5], 5 : [6], 6 : [7], 7 : [8, 8], 8 : [9, 12], 9 : [15, 10], 10 : [11, 11, 11], 11 : [15], 12 : [13, 13, 13], 13 : [14, 14], 14 : [15, 15, 15], 15 : [16], 16 : [17], 17 : [18]}
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	engine.dialogue_started.connect(_dialogue)
	engine.choices_presented.connect(_options)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _dialogue():
	if  d.has(dialogueid.dialogueid) :
		props.diascript = ((d[dialogueid.dialogueid])[0])
	if is_instance_valid(props.diacharacter) :
		props.diacharacter = (d[dialogueid.dialogueid])[1]
	if is_instance_valid(props.diamod) :
			props.diamod = ((d[dialogueid.dialogueid])[2])

func _options():
	if o.has(dialogueid.dialogueid) :
		options = ((o[dialogueid.dialogueid]))
	if o2.has(dialogueid.dialogueid) :
		options2 = ((o2[dialogueid.dialogueid]))
