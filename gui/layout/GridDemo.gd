extends GridContainer

var num = 0
func _init(count:int):
    num = count;
    self.margin_top = 460
    self.margin_left = 100

    self.columns = 3

    # 间隔距离
    # self.set("custom_constants/hseparation",10);
    # self.set("custom_constants/vseparation",10);
    self.add_constant_override("hseparation",10)
    self.add_constant_override("vseparation",10)

    initChild();

func _ready():
	# 挂载后才会有大小
	print(self.rect_size)

func initChild():
	var myBtn = load("res://gui/button/ButtonDemo.gd")
	# 添加子组件
	for k in range(1,num) :
		var btn = myBtn.new("网格 %s" % k);
		self.add_child(btn)
	pass

func save(content):
	var file = File.new()
	file.open("user://hboxprop.txt", File.WRITE)
	file.store_string(content)
	file.close()
	print("save ok")
