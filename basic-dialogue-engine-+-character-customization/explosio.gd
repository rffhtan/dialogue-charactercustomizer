extends TextureRect
@onready var explode = get_node("/root/Dialogue_Engine/AudioStreamPlayer2D")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(explode)
	explode.stream = load("res://assets/dragon-studio-loud-explosion-425457.mp3")
	hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dialogueid.dialogueid == 19 :
		show()
		if not explode.playing :
			explode.play(0.0)
		await get_tree().create_timer(0.5).timeout
		modulate.a = 0.75
		await get_tree().create_timer(0.05).timeout
		modulate.a = 0.5
		await get_tree().create_timer(0.05).timeout
		modulate.a = 0.25
		modulate.a = 0
		dialogueid.dialogueid = 20
