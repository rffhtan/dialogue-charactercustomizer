extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dialogueid.dialogueid == 19 :
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
		if avatar.charactercode.substr(1,1) == "5": #bush
			region_rect = Rect2(0,250,230,180)
			position = Vector2(-15,-94)
		if str(avatar.charactercode).substr(1,1) == "7": #cap
			region_rect = Rect2(480,250,230,180)
			position = Vector2(50,-145)
		if str(avatar.charactercode).substr(1,1) == "2": #beanie
			region_rect = Rect2(690,250,230,180)
			position = Vector2(10,-138.3)
		if str(avatar.charactercode).substr(3,1) == "1" : #afro
			region_rect = Rect2(0, 500, 230, 180)
			position = Vector2(-6,-160)
		if str(avatar.charactercode).substr(3,1) == "2" : #jojo
			region_rect = Rect2(0, 750, 230, 180)
			position = Vector2(0,-113)
		if str(avatar.charactercode).substr(3,1) == "3" : #spikey
			region_rect = Rect2(480, 500, 230, 180)
		if str(avatar.charactercode).substr(3,1) == "4" : #jojo2
			region_rect = Rect2(690, 500, 230, 180)
			position = Vector2(30,-118)
		if str(avatar.charactercode).substr(3,1) == "5" : #short haircut
			region_rect = Rect2(260, 500, 228, 180)
			scale = Vector2(1.1,1.1)
			position = Vector2(38,-158)
		if str(avatar.charactercode).substr(3,1) == "6" : #fade2
			region_rect = Rect2(480, 750, 230, 180)
			position = Vector2(40,-110)
		if str(avatar.charactercode).substr(3,1) == "7" : #buzz
			region_rect = Rect2(690,0,210,180)
			position = Vector2(16.67,-143)
		if str(avatar.charactercode).substr(3,1) == "8" : #fade
			region_rect = Rect2(260,250,230,180)
			position = Vector2(30,-126)
		if str(avatar.charactercode).substr(4,1) == "1" : #fade
			region_rect = Rect2(5,60,180,180)
			position = Vector2(8.3, -98.3)
		if str(avatar.charactercode).substr(4,1) == "2" : #fade
			region_rect = Rect2(225,60,180,180)
			position = Vector2(0, -96.6)
		if str(avatar.charactercode).substr(4,1) == "3" : #fade
			region_rect = Rect2(470,60,230,180)
			position = Vector2(10, -80)
		if str(avatar.charactercode).substr(4,1) == "4" : #fade
			region_rect = Rect2(700,60,230,180)
			position = Vector2(-16.6, -120)
		if str(avatar.charactercode).substr(4,1) == "5" : #fade
			region_rect = Rect2(35,250,180,200)
			position = Vector2(0, -80)
		if str(avatar.charactercode).substr(4,1) == "6" : #fade
			region_rect = Rect2(235,250,180,200)
			position = Vector2(-26.6, -80)
		if str(avatar.charactercode).substr(4,1) == "7" : #fade
			region_rect = Rect2(475,225,250,225)
			position = Vector2(15, -146.6)
		if str(avatar.charactercode).substr(4,1) == "8" : #fade
			region_rect = Rect2(750,250,200,200)
			position = Vector2(5, -100)
			scale = Vector2(0.9,0.9)
	if str(avatar.charactercode).substr(2,1) == "2" :
		self.texture = load("res://assets/pixil-layer-1.png")
	elif str(avatar.charactercode).substr(2,1) == "1" :
		self.texture = ResourceLoader.load("res://assets/pixil-layer-Layer-3.png", "Sprite2D", ResourceLoader.CACHE_MODE_REPLACE)
		
