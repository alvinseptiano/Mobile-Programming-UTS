extends Control


func _ready() -> void:
	$Top/Back.connect("pressed", self, "hide")
	Signals.connect("view", self, "set_preview")


func set_preview(type: Array, dir: String, key: String) -> void:
	show()
	var tex
	var price
	match dir:
		"flight":
			tex = load(
			"res://gfx/preview/flight/" + Database.flight[key][0])
			price = Database.flight[key][2]
		"hotel":
			tex = load(
			"res://gfx/preview/hotel/" + Database.hotel[key][0])
			price = Database.hotel[key][2]
		"restaurant":
			tex = load(
			"res://gfx/preview/restaurant/" + Database.restaurant[key][0])
			price = Database.restaurant[key][2]
		"bus":
			tex = load(
			"res://gfx/preview/bus/" + Database.bus[key][0])
			price = Database.bus[key][2]
	$Top/Label.text = key
	$Buttons/Price.text = "$ " + str(price)
	$Img.texture = tex
