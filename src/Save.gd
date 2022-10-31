extends Node

export var version := 1
export var bookmark: Resource = Character.new()


# Semua data digabungkan didalam variabel data
var data: Dictionary

func fetch_data(slot_no: String) -> void:
	data = {
		"version": version,
		"player": {
			"health": stats.health,
			"game_time": player.game_time,
			"position_x": player.position.x,
			"position_y": player.position.y
		},
		"level": {
			"last_map": map.current_map,
			"data": map.map,
		},
		"inventory": inventory.items,
		"equipment": {
			"handgun_mag": equipment.handgun_mag,
			"shotgun_mag": equipment.shotgun_mag,
			"active_equipment": equipment.active_equipment
		}
	}
	slot[slot_no] = data
