extends ScrollContainer

var num = 0
func _init(count:int):
    num = count;
    self.margin_top = 280
    self.margin_left = 740

    self.rect_size = Vector2(100,100)

    initChild();

func _ready():
	# 挂载后才会有大小
	print(self.rect_size)

func initChild():
    var myHbox = load("res://gui/layout/GridDemo.gd")
    self.add_child(myHbox.new(50))

func save(content):
	var file = File.new()
	file.open("user://hboxprop.txt", File.WRITE)
	file.store_string(content)
	file.close()
	print("save ok")
