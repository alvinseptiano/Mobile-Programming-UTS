extends HBoxContainer

var preview = preload("res://src/Preview.tscn")
signal change_texture

func _ready() -> void:
	for menu in get_children():
		menu.connect("pressed", self, "on_pressed", [menu.name])
	refresh_list(Database.flight, "flight")


func on_pressed(menu_name: String) -> void:
	var type: String = menu_name.to_lower()
	match type:
		"flight":
			refresh_list(Database.flight, "flight")
		"hotel":
			refresh_list(Database.hotel, "hotel")
		"restaurant":
			refresh_list(Database.restaurant, "restaurant")
		"bus":
			refresh_list(Database.bus, "bus")
		_:
			type = ""
	


func refresh_list(data: Dictionary, dir: String) -> void:
	var child
	var tex
	var icon_qty = data.size() 

	# Refresh list dengan menghapus semua child yang ada
	for y in get_node("../PreviewList/Scroll/List").get_children():
		y.queue_free()
		print("deleted ", y.name)

	# Coroutine
	yield(get_tree(), "idle_frame")

	# Instance ulang dan assign texture
	var key = data.keys()
	for n in range(data.size()):
		child = preview.instance()
		tex = load("res://gfx/preview/" + dir + "/" + str(data[key[n]][0]))
		child.get_node("Img").texture = tex
		child.type = dir
		child.key = key[n]
		child.name = "Preview" + str(n + 1)
		child.item_name = data[key[n]]
		get_node("../PreviewList/Scroll/List").add_child(child)
