extends Button
@onready var manager = get_node("/root/Dialogue_Engine/script_manager")
@onready var engine = get_node("/root/Dialogue_Engine")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	engine.choices_presented.connect(_options)	
	var button = Button.new()
	button.pressed.connect(_button_pressed)

func _button_pressed():
	if  manager.o2.has(dialogueid.dialogueid) and ((manager.o2[dialogueid.dialogueid])).size() >= 2 :
		dialogueid.dialogueid = ((manager.o2[dialogueid.dialogueid])[1])
	if dialogueid.dialogueid == 8 :
		avatar.charactercode = avatar.charactercode.substr(1)
		avatar.charactercode = avatar.charactercode.insert(0,"2")
	if dialogueid.dialogueid == 16 :
		if avatar.charactercode.substr(0,1) == "1" :
			avatar.charactercode = avatar.charactercode.substr(1)
			avatar.charactercode = avatar.charactercode.insert(0,"3")
		if avatar.charactercode.substr(0,1) == "2" :
			avatar.charactercode = avatar.charactercode.substr(1)
			avatar.charactercode = avatar.charactercode.insert(0,"4")


func _options():	
	if  manager.o.has(dialogueid.dialogueid) and (manager.o[dialogueid.dialogueid]).size() >= (2):
		show()
		set_text(((manager.o[dialogueid.dialogueid])[1]))	
	else :
		hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
