extends Object


static func setFont(c:Control):
    var dynamic_font 
    dynamic_font = DynamicFont.new()
    dynamic_font.font_data = load("res://font/FZFSK.TTF")
    dynamic_font.size = 12
    c.set("custom_fonts/font", dynamic_font)