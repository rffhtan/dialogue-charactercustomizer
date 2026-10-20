extends Button
@onready var manager = get_node("/root/Dialogue_Engine/script_manager")
@onready var engine = get_node("/root/Dialogue_Engine")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	engine.choices_presented.connect(_options)	
	var button = Button.new()
	button.pressed.connect(_button_pressed)

func _button_pressed():
		print("2pressed")
		if dialogueid.dialogueid == 7 :
			avatar.charactercode = avatar.charactercode.replace("a","2")
			print(avatar.charactercode)
		if dialogueid.dialogueid == 8:
			pass
		if dialogueid.dialogueid == 10 :
			print(avatar.charactercode)
			avatar.charactercode = avatar.charactercode.replace("b","1")
		if dialogueid.dialogueid == 12 :
			avatar.charactercode = avatar.charactercode.replace("c","2")
		if dialogueid.dialogueid == 13 :
				if str(avatar.charactercode).substr(2,1) == "2" :
					avatar.charactercode = avatar.charactercode.replace("d",str(randi_range(2,4)))
				if str(avatar.charactercode).substr(2,1) == "1" :
					pass
		if dialogueid.dialogueid == 16 :
			print(avatar.charactercode)
			if avatar.charactercode.substr(0,1) == "1" :
				avatar.charactercode = avatar.charactercode.substr(1)
				avatar.charactercode = avatar.charactercode.insert(0,"7")
				print(avatar.charactercode)
			if avatar.charactercode.substr(0,1) == "2" :
				avatar.charactercode = avatar.charactercode.substr(1)
				avatar.charactercode = avatar.charactercode.insert(0,"8")
				print(avatar.charactercode)
		if  manager.o2.has(dialogueid.dialogueid) and ((manager.o2[dialogueid.dialogueid])).size() >= 2 :
			await get_tree().create_timer(0.1).timeout
			dialogueid.dialogueid = ((manager.o2[dialogueid.dialogueid])[1])



func _options():	
	if  manager.o.has(dialogueid.dialogueid) and (manager.o[dialogueid.dialogueid]).size() >= (2):
		show()
		set_text(((manager.o[dialogueid.dialogueid])[1]))	
	else :
		hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
