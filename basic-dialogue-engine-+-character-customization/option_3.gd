extends Button
@onready var manager = get_node("/root/Dialogue_Engine/script_manager")
@onready var engine = get_node("/root/Dialogue_Engine")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	engine.choices_presented.connect(_options)
	
func _options():
	var button = Button.new()
	set_text(((manager.o[1])[2]))	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
