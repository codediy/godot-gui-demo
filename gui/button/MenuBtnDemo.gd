extends MenuButton

var dynamic_font:DynamicFont
var itemLabel = ["item1","菜单1","菜单2","菜单3","菜单4"]

func _init():
    loadFont()
    self.text = "菜单按钮"
    self.margin_top = 320
    self.margin_left = 120

    initItem();

func initItem():
    var p = self.get_popup()
    
    # 需要设置中文字体
    p.set("custom_fonts/font", dynamic_font)
    for item in itemLabel :
        p.add_item(item)

    p.connect("id_pressed",self,"onChange")

func loadFont():
    dynamic_font = DynamicFont.new()
    dynamic_font.font_data = load("res://font/FZFSK.TTF")
    dynamic_font.size = 12
    self.set("custom_fonts/font", dynamic_font)

func onChange(i:int):
    print("选择的 ",i,itemLabel[i])
