extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	region_rect = Rect2(40,50,150,380)
	#region_rect = Rect2(240,50,150,380)
	#region_rect = Rect2(480,50,150,380)
	#region_rect = Rect2(700,50,150,380)
	#region_rect = Rect2(40,50,150,380)
	#region_rect = Rect2(240,50,150,380)
	#region_rect = Rect2(480,50,150,380)
	#region_rect = Rect2(700,50,150,380)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dialogueid.dialogueid == 18 :
		show()
