extends Node2D

var bullet = preload("res://Component/Bullet.tscn")
@export var STARTING_POSITION : Marker2D

func _ready(): 
	$Timer.start()
	
func _on_timer_timeout():
	var b = bullet.instantiate()
	b.global_position = STARTING_POSITION.global_position
	add_child(b)
