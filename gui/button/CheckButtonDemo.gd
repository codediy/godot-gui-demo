extends CheckButton

func _init():
    loadFont()

    self.margin_top = 280
    self.margin_left = 140


func loadFont():
    var dynamic_font = DynamicFont.new()
    dynamic_font.font_data = load("res://font/FZFSK.TTF")
    dynamic_font.size = 12
    self.set("custom_fonts/font", dynamic_font)
    