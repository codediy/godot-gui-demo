extends LineEdit

class_name MyInput

func _init():
    loadFont()
    self.margin_left = 65
    self.margin_top = 20
    
    self.align = ALIGN_CENTER
    self.set_size(Vector2(180,20))

    self.placeholder_text="请输入姓名"
    
    # self.caret_blink = true
    self.clear_button_enabled = true
    self.context_menu_enabled = false

    self.secret = true
    self.secret_character = "~"

    # 输入内容 按回车
    connect("text_entered",self,"onEntered")
    # 有输入内容变化 
    connect("text_changed",self,"onChange")

    # 超出长度限制
    self.max_length = 6
    connect("text_change_rejected",self,"onRejected")

func loadFont():
    var dynamic_font = DynamicFont.new()
    dynamic_font.font_data = load("res://font/FZFSK.TTF")
    dynamic_font.size = 10
    self.set("custom_fonts/font", dynamic_font)


func onEntered(text:String):
    print("onEntered")
    # 全部字符串
    print(text)


func onChange(text:String):
    print("onChange")
    # 全部字符串
    print(text)

func onRejected(text:String):
    print("onRejected")
    # 忽略的字符串
    print(text)