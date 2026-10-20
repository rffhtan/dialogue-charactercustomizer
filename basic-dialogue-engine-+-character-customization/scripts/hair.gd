extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dialogueid.dialogueid == 19 :
		show()
		if str(avatar.charactercode).substr(1,1) == "b" :
			hide()
		else : 
			show()
		if str(avatar.charactercode).substr(1,1) == "1": #sensei hat
			region_rect = Rect2(0,0,230,180)
			position = Vector2(-10,-155)
		if str(avatar.charactercode).substr(1,1) == "8": #spikey
			region_rect = Rect2(230,0,230,180)
			position = Vector2(5,-141.67)
		if str(avatar.charactercode).substr(1,1) == "3": #ninja
			region_rect = Rect2(460,0,230,180)
			position = Vector2(0,-145)
			scale = Vector2(1.3,1.3)
		if str(avatar.charactercode).substr(1,1) == "4": #buzz ish
			region_rect = Rect2(690,0,210,180)
			position = Vector2(25,-148)
		if avatar.charactercode.substr(1,1) == "5": #bush
			region_rect = Rect2(0,250,230,180)
			position = Vector2(-15,-94)
		if str(avatar.charactercode).substr(1,1) == "6": #fade
			region_rect = Rect2(260,250,230,180)
			position = Vector2(30,-126)
		if str(avatar.charactercode).substr(1,1) == "7": #cap
			region_rect = Rect2(480,250,230,180)
			position = Vector2(50,-145)
		if str(avatar.charactercode).substr(1,1) == "2": #beanie
			region_rect = Rect2(690,250,230,180)
			position = Vector2(10,-138.3)
	self.texture = load("res://assets/pixil-layer-1.png")
