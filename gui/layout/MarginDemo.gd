extends MarginContainer

var num = 0
func _init(count:int):
    num = count;
    self.margin_top = 320
    self.margin_left = 500

    # 以主题形式的添加边距
    var margin_value = 10
    add_constant_override("margin_top", margin_value)
    add_constant_override("margin_left", margin_value)
    add_constant_override("margin_bottom", margin_value)
    add_constant_override("margin_right", margin_value)

    initChild();

func _ready():
	# 挂载后才会有大小
	print(self.rect_size)

func initChild():
	var myBtn = load("res://gui/button/ButtonDemo.gd")
	# 添加子组件
	for k in range(1,num) :
		var btn = myBtn.new("边距 %s" % k);
		self.add_child(btn)
	pass

func save(content):
	var file = File.new()
	file.open("user://hboxprop.txt", File.WRITE)
	file.store_string(content)
	file.close()
	print("save ok")
