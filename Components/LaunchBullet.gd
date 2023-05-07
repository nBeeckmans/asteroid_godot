extends Node2D

@export var BULLET : PackedScene
@export var STARTING_POSITION : Marker2D

func _ready(): 
	$Timer.start()

func _on_timer_timeout():
	var b = BULLET.instantiate()
	owner.add_child(b)
	b.transform = STARTING_POSITION.global_transform
	
