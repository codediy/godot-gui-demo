extends CenterContainer

var num = 0
func _init(count:int):
	num = count;
	self.margin_top = 340
	self.margin_left = 420
	# 间隔距离
	self.rect_size = Vector2(100,40)
	initChild();


func _ready():
	# 挂载后才会有大小
	print(self.rect_size)


func initChild():
	var myBtn = load("res://gui/button/ButtonDemo.gd")
	# 添加子组件
	for k in range(1,num) :
		var btn = myBtn.new("居中 %s" % k);
		self.add_child(btn)
	pass

func save(content):
	var file = File.new()
	file.open("user://hboxprop.txt", File.WRITE)
	file.store_string(content)
	file.close()
	print("save ok")
