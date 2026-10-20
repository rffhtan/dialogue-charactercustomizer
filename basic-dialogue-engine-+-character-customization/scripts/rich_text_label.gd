extends RichTextLabel
@onready var engine = get_node("/root/Dialogue_Engine")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	show()
	engine.dialogue_started.connect(_dialogue)
	pass # Replace with function body.

func _dialogue() :
	hide()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
