extends TextEdit
class_name MyTextArea

func _init():
    print("myTextArea init")
    loadFont();
    self.set_begin(Vector2(20,60))
    # 必须设置宽高 才会显示
    self.set_size(Vector2(300,200))

    # ?   
    # self.bookmark_gutter = true
    # self.set_line_as_bookmark(2,true)


    # self.caret_blink = true
    # self.caret_blink_speed = 0.2
    # self.caret_block_mode = true

    # 必须在字符内容直接切换
    # self.caret_moving_by_right_click = false

    # self.context_menu_enabled = false
    # self.draw_spaces = true
    # self.draw_tabs = true

    # self.fold_gutter = true

    # self.highlight_current_line = true
    self.minimap_draw = true
    self.show_line_numbers = true

    # 必须先开启语法高亮
    self.syntax_highlighting = true
    self.add_keyword_color("func",Color.blueviolet)

    # 断点
    self.breakpoint_gutter = true
    self.connect("breakpoint_toggled",self,"onToggleBreakPoint")

    # 光标位置
    self.fold_gutter = true;
    self.connect("cursor_changed",self,"onCursorMove")

func loadFont():
    var dynamic_font = DynamicFont.new()
    dynamic_font.font_data = load("res://font/FZFSK.TTF")
    dynamic_font.size = 20
    self.set("custom_fonts/font", dynamic_font)


func onToggleBreakPoint(row:int):
    print("onToggleBreakPoint")
    print(row)

func onCursorMove():
    print("onCursorMove")
    var line = self.cursor_get_line()
    var col = self.cursor_get_column()
    print("line:",line,",col:",col)
    # ?
    # print("fold",self.can_fold(line))
    # self.toggle_fold_line(2) 
    # self.fold_all_lines()
