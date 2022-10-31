extends Node


func _ready() -> void:
	for node in $Control.get_children():
		if node.is_in_group("popup"):
			node.hide()


