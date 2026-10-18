extends Control
@onready var dialoguebox = $dialoguebox
@onready var panel = get_node("dialoguebox/panel")
@export var props = load("res://dialogueresources.tres")

signal dialogue_started()
signal line_displayed 
signal choices_presented
signal dialogue_ended

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func dialogue() -> void:
	dialogue_started.emit()
	choices_presented.emit()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	if Input.is_action_pressed("ui_accept"):
		dialogue()
	if Input.is_key_pressed(KEY_1) :
		dialogueid.dialogueid = 1
	if Input.is_key_pressed(KEY_2) :
		dialogueid.dialogueid = 2
	if Input.is_key_pressed(KEY_3) :
		dialogueid.dialogueid = 3
