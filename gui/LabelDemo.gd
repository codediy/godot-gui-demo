extends Label
class_name MyLabel

func _init():
	loadFont()
	self.text = "名称"
	rePosition()
	pass

func loadFont():
	
	var dynamic_font = DynamicFont.new()
	dynamic_font.font_data = load("res://font/FZFSK.TTF")
	dynamic_font.size = 12
	self.set("custom_fonts/font", dynamic_font)
	

func rePosition():
	# 锚点定位
	# self.anchor_top = 0.5
	# self.anchor_left = 0.5

	# self.margin_left = -10
	# self.margin_top = -10

	self.set_begin(Vector2(20,20))
	# self.rect_rotation = 45
	
	
