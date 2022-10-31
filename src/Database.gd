extends Node

# implement better system for larger data
# key > texture path > star rating > price
var flight: Dictionary = {
	"lax airport": ["lax_airport.png", 4, 325],
	"singapore airport": ["singapore_airport.png", 5, 475],
}
var restaurant: Dictionary = {
	"paris restaurant": ["paris_restaurant.png", 4, 90],
	"japanese restaurant": ["japan_restaurant.png", 4, 76],
}
var hotel: Dictionary = {
	"newyork hotel": ["newyork_hotel.png", 4, 126],
	"vegas hotel": ["vegas_hotel.png", 4, 85],
}
var bus: Dictionary = {
	"japan train": ["japan_train.png", 5, 5],
	"korean train": ["korean_train.png", 4, 3],
}
