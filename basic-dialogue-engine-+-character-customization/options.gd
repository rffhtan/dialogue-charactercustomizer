extends Control
@onready var engine = get_node("/root/Dialogue_Engine")
@onready var manager = get_node("/root/Dialogue_Engine/script_manager")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	engine.choices_presented.connect(_options)
	
func _options():
	show()

	
func _process(delta: float) -> void:
	pass
