extends Control

func _ready():
	
	baseDemo()
	btnDemo();
	rectDemo();
	containerDemo();
	layoutDemo()

func baseDemo():
	var mylabel = load("res://gui/LabelDemo.gd")
	self.add_child(mylabel.new())

	var myInput = load("res://gui/LineDemo.gd")
	self.add_child(myInput.new())

	var myTextArea = load("res://gui/TextAreaDemo.gd")
	self.add_child(myTextArea.new())

func btnDemo():
	var myBtn = load("res://gui/button/ButtonDemo.gd")
	self.add_child(myBtn.new())

	var myCheckBox = load("res://gui/button/CheckBoxDemo.gd")


	var check1 = myCheckBox.new()
	self.add_child(check1)

	var check2 = myCheckBox.new()
	check2.margin_left = 80
	check2.text = "关闭"
	self.add_child(check2)

	# 单选
	var btnG = ButtonGroup.new();
	check1.group = btnG;
	check2.group = btnG;
	
	var myCheckBtn = load("res://gui/button/CheckButtonDemo.gd")
	self.add_child(myCheckBtn.new())

	var myColorBtn = load("res://gui/button/ColorPickBtn.gd")
	self.add_child(myColorBtn.new())


	var myMenuBtn = load("res://gui/button/MenuBtnDemo.gd")
	self.add_child(myMenuBtn.new())

	var myOptionBtn = load("res://gui/button/OptionBtnDemo.gd")
	self.add_child(myOptionBtn.new())

	# 简单按钮
	var tBtn = ToolButton.new();
	tBtn.text="ToolBtn"
	tBtn.margin_left = 20
	tBtn.margin_top = 400
	self.add_child(tBtn)

	# 带有下划线的按钮
	var lBtn = LinkButton.new()
	lBtn.text = "Baidu"
	lBtn.margin_left = 100
	lBtn.margin_top = 400
	self.add_child(lBtn)

	# 纹理按钮
	var ImgBtn = TextureButton.new()
	ImgBtn.texture_normal = load("res://icon.png")
	ImgBtn.margin_left = 20
	ImgBtn.margin_top = 440
	self.add_child(ImgBtn)

func rectDemo():
	var colorRect = ColorRect.new()
	colorRect.margin_left = 400
	colorRect.margin_top = 20
	# 必须设置大小
	colorRect.rect_size = Vector2(80,80)
	# 可以修改颜色
	colorRect.color = Color(0,1,0,1)

	self.add_child(colorRect)

	var borderRect = ReferenceRect.new()

	borderRect.margin_left = 500
	borderRect.margin_top = 20
	# 必须设置大小
	borderRect.rect_size = Vector2(80,80)
	borderRect.border_color = Color(0,1,0,1)
	# 游戏可见
	borderRect.editor_only = false
	self.add_child(borderRect)

	var imgRect = TextureRect.new()
	imgRect.texture  = load("res://icon.png")

	imgRect.margin_left = 600
	imgRect.margin_top = 20

	self.add_child(imgRect)

func containerDemo():
	# Panel
	var panel = Panel.new()
	panel.margin_top = 120
	panel.margin_left = 400
	# 必须设置大小
	panel.rect_size = Vector2(100,100)
	# 添加子节点

	self.add_child(panel)

	# ItemList
	var listDemo = ItemList.new();
	listDemo.margin_top = 120
	listDemo.margin_left = 520
	# 开启多选
	listDemo.select_mode = 1 
	# 必须设置大小
	listDemo.rect_size = Vector2(100,100)
	# 静态函数设置字体
	var fontUtil = load("res://gui/FontUtil.gd")
	fontUtil.setFont(listDemo)

	listDemo.add_item("item1")
	listDemo.add_item("item2")
	listDemo.add_item("item3")
	listDemo.add_item("item4")
	listDemo.add_item("项目5")
	self.add_child(listDemo)

	# Tabs
	var tabDemo = Tabs.new()

	tabDemo.margin_top = 20
	tabDemo.margin_left = 720
	tabDemo.rect_size = Vector2(200,40)

	# 必须在设置大小后再添加选项
	tabDemo.add_tab("Tab1")
	tabDemo.add_tab("Tab2")
	tabDemo.add_tab("Tab3")

	self.add_child(tabDemo)

func layoutDemo():
	var myHbox = load("res://gui/layout/HboxDemo.gd")
	var hboxDemo = myHbox.new(5)
	self.add_child(hboxDemo)
	var hboxDemo2 = myHbox.new(10)
	hboxDemo.margin_top = 280
	self.add_child(hboxDemo2)

	var myVbox = load("res://gui/layout/VboxDemo.gd")
	var vboxDemo = myVbox.new(6)
	self.add_child(vboxDemo)

	var myGrid = load("res://gui/layout/GridDemo.gd")
	var gridDemo = myGrid.new(11)
	self.add_child(gridDemo)

	var myCenter = load("res://gui/layout/CenterDemo.gd")
	# 只可以设置一个子节点 直接子节点使用Hbox,VBox,GridBox
	var centerDemo = myCenter.new(2)
	self.add_child(centerDemo)

	var myMargin = load("res://gui/layout/MarginDemo.gd")
	# 只可以设置一个子节点 直接子节点使用Hbox,VBox,GridBox
	var marginDemo = myMargin.new(2)
	self.add_child(marginDemo)

	var myPanel = load("res://gui/layout/PanelDemo.gd")
	# 只可以设置一个子节点 直接子节点使用Hbox,VBox,GridBox 
	var panelDemo = myPanel.new(2)
	self.add_child(panelDemo)

	var myScroll = load("res://gui/layout/ScrollDemo.gd")
	# 只可以设置一个子节点 直接子节点使用Hbox,VBox,GridBox
	var scrollDemo = myScroll.new(2)
	self.add_child(scrollDemo)


	var myHSplit = load("res://gui/layout/HSplitDemo.gd")
	var hsplitDemo = myHSplit.new(3)
	self.add_child(hsplitDemo)

	var myVSplit = load("res://gui/layout/VSplitDemo.gd")
	var vsplitDemo = myVSplit.new(3)
	self.add_child(vsplitDemo)

	# 选项卡
	var myTab = load("res://gui/layout/TabDemo.gd")
	var tabDemo = myTab.new(4)
	self.add_child(tabDemo)
	
func _draw():
	drawXY()

func drawLine():
	var starPoint = Vector2(100,100)
	var endPoint = Vector2(300,100)
	draw_line(
		starPoint,
		endPoint,
		Color(0,0,1,1),
		2
	)
func drawMultiLine():
	var pointArray = [
		Vector2(200,200),
		Vector2(300,200),
		Vector2(300,400),
		Vector2(200,400),
	]
	draw_multiline(
		PoolVector2Array(pointArray),
		Color(0,0,1,1)
	)

func drawXY(space = 20):
	# 绘制坐标系
	var size = self.rect_size
	var pointX = 0
	var pointY = 0
		
	# 绘制垂直
	while true:
		draw_line(
			Vector2(pointX,0),
			Vector2(pointX,size.y),
			Color.red
		);
		pointX = pointX + space
		if(pointX >= size.x):
			break

	# 绘制水平
	while true:
		draw_line(
			Vector2(0,pointY),
			Vector2(size.x,pointY),
			Color.red
		);
		pointY = pointY + space

		if(pointY >= size.y):
			break


