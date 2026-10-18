extends Control
@onready var engine = get_node("/root/Dialogue_Engine")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	engine.choices_presented.connect(_dialogue)
	
func _dialogue():
	show()
	
func _process(delta: float) -> void:
	pass
