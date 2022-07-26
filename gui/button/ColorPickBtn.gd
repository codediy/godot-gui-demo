extends ColorPickerButton

func _init():
    loadFont()
    # 文字无效
    # self.text = "颜色选择器"
    self.rect_size = Vector2(80,20)
    self.margin_top = 320
    self.margin_left = 20
    self.edit_alpha = true

    self.initEvent()

func loadFont():
    var dynamic_font = DynamicFont.new()
    dynamic_font.font_data = load("res://font/FZFSK.TTF")
    dynamic_font.size = 12
    self.set("custom_fonts/font", dynamic_font)


func initEvent():
    connect("color_changed",self,"onChanged")
    connect("picker_created",self,"onCreated")

func onChanged(c:Color):
    print("当前颜色",c)

    
func onCreated():
    print(self.get_picker())
    print(self.get_popup())
    
