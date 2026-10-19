extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dialogueid.dialogueid == 18 :
		show()
	if str(avatar.charactercode).substr(0,1) == "1": 
		region_rect = Rect2(40,50,150,380)
	if str(avatar.charactercode).substr(0,1) == "2": 
		region_rect = Rect2(240,50,150,380)
	if str(avatar.charactercode).substr(0,1) == "3": 
		region_rect = Rect2(480,50,150,380)
	if str(avatar.charactercode).substr(0,1) == "4": 
		region_rect = Rect2(700,50,150,380)
	if str(avatar.charactercode).substr(0,1) == "5": 
		region_rect = Rect2(40,50,150,380)
	if str(avatar.charactercode).substr(0,1) == "6": 
		region_rect = Rect2(240,50,150,380)
	if str(avatar.charactercode).substr(0,1) == "7": 
		region_rect = Rect2(480,50,150,380)
	if str(avatar.charactercode).substr(0,1) == "8": 
		region_rect = Rect2(700,50,150,380)
