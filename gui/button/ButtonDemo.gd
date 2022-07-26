extends Button

func _init(text:String = "确认"):
    loadFont()
    self.text = text
    self.margin_top = 20
    self.margin_left = 260


    self.initEvent()

func loadFont():
    var dynamic_font = DynamicFont.new()
    dynamic_font.font_data = load("res://font/FZFSK.TTF")
    dynamic_font.size = 12
    self.set("custom_fonts/font", dynamic_font)


func initEvent():
    connect("button_down",self,"OnBtnDown")
    connect("button_up",self,"onBtnUp")
    connect("pressed",self,"OnPressed")

    self.toggle_mode = true;
    connect("toggled",self,"onTogged")
    
func OnBtnDown():
    print("OnBtnDown")


func onBtnUp():
    print("onBtnUp")

func OnPressed():
    print("OnPressed")

func onTogged():
    print("onTogged")