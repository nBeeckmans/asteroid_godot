extends Area2D

@export var BULLET_SPEED : float = 1.0

#func _ready(): 
#	set_as_top_level(true)
	
func _physics_process(delta):
	position.x += BULLET_SPEED
