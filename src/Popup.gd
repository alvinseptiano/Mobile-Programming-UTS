extends Control


func _ready() -> void:
	$Top/Back.connect("pressed", self, "hide")
