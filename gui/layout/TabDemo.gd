extends TabContainer

var num = 0
func _init(count:int):
    num = count;
    self.margin_top = 380
    self.margin_left = 400

    # 大小是子组件的大小
    self.rect_size = Vector2(400,180)

    initChild();

func _ready():
	# 挂载后才会有大小
	print(self.rect_size)

func initChild():
    var myBtn = load("res://gui/button/ButtonDemo.gd")
    # 添加子组件
    for k in range(0,num) :
        var btn = myBtn.new("选项卡内容 %s" % k);
        self.add_child(btn)
        # 必须先添加子节点 再设置标题
        self.set_tab_title(k,"标题%s" % k)

func save(content):
	var file = File.new()
	file.open("user://hboxprop.txt", File.WRITE)
	file.store_string(content)
	file.close()
	print("save ok")
