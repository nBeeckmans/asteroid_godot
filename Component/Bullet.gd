extends Area2D

@export var BULLET_SPEED : float = 900.0

func _ready(): 
	set_as_top_level(true)
	
func _physics_process(delta):
	position -= transform.y * BULLET_SPEED * delta
