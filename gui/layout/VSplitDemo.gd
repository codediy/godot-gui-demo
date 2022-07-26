extends VSplitContainer

var num = 0
func _init(count:int):
    num = count;
    self.margin_top = 280
    self.margin_left = 880

    self.add_constant_override("autohide",0)
    # 需要设置大小 才可以拖动
    # 拖动按钮在中间触发
    self.rect_size = Vector2(40,200)
    initChild();

func _ready():
	# 挂载后才会有大小
	print(self.rect_size)

func initChild():
	var myBtn = load("res://gui/button/ButtonDemo.gd")
	# 添加子组件
	# 只可以添加2个
	for k in range(1,num) :
		var btn = myBtn.new("垂直拆分 %s" % k);
		self.add_child(btn)
	pass

func save(content):
	var file = File.new()
	file.open("user://hboxprop.txt", File.WRITE)
	file.store_string(content)
	file.close()
	print("save ok")
