extends NinePatchRect

var item_name: Array
var type: String
var key: String


func on_pressed() ->  void:
	#if event:
	Signals.emit_signal("view", item_name, type, key)


func _on_Button_pressed() -> void:
	on_pressed()
