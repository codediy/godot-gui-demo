extends VBoxContainer

var num = 0
func _init(count:int):
	num = count;
	self.margin_top = 280
	self.margin_left = 220
	# 添加间隔
	self.add_spacer(true)
	# 间隔距离
	self.set("custom_constants/separation",10);
	initChild();

func _ready():
    # 挂载后才会有大小
	print(self.rect_size)

func initChild():
	var myBtn = load("res://gui/button/ButtonDemo.gd")
	# 添加子组件
	for k in range(1,num) :
		var btn = myBtn.new("垂直 %s" % k);
		self.add_child(btn)
	pass

func save(content):
	var file = File.new()
	file.open("user://hboxprop.txt", File.WRITE)
	file.store_string(content)
	file.close()
	print("save ok")
