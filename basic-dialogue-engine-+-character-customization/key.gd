extends Node
@onready var engine = get_node("/root/Dialogue_Engine")
@export var props = load("res://dialogueresources.tres")
var options : Array 
var d = {1 : ["a", "Hello world", "a"], 2 : ["a", "goodbye world", "a"]}
var o = {1 : ["sure man", "hello - world", "lol"]}
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	engine.dialogue_started.connect(_dialogue)
	engine.choices_presented.connect(_options)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _dialogue():
	if not d.size() < dialogueid.dialogueid :
		props.diacharacter = ((d[dialogueid.dialogueid])[0])
		props.diascript = ((d[dialogueid.dialogueid])[1])
		props.diamod = ((d[dialogueid.dialogueid])[2])

func _options():
	if not o.size() < dialogueid.dialogueid :
		options = ((o[dialogueid.dialogueid]))
		print(options)
