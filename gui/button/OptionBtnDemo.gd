extends OptionButton

var dynamic_font:DynamicFont
var itemLabel = ["item1","菜单1","菜单2","菜单3","菜单4"]

func _init():
	loadFont()
	self.text = "选项按钮"
	self.margin_left = 20
	self.margin_top = 360

	self.initItem();

func initItem():
	var p = self.get_popup()
	p.set("custom_fonts/font", dynamic_font)
	for item in itemLabel :
		self.add_item(item)

func loadFont():
	dynamic_font = DynamicFont.new()
	dynamic_font.font_data = load("res://font/FZFSK.TTF")
	dynamic_font.size = 12
	self.set("custom_fonts/font", dynamic_font)
