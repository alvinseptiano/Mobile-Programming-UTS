extends Panel


func _ready() -> void:
	for menu in $List.get_children():
		menu.connect("pressed", self, "on_pressed", [menu.name])


func on_pressed(menu_name: String) -> void:
	match menu_name.to_lower():
		"home":
			pass
		"notification":
			get_node("../Notification").show()
		"bookmark":
			get_node("../Bookmark").show()
		"message":
			get_node("../Message").show()
