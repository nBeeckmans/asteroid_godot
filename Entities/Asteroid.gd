extends Node2D

var movement : Vector2 = Vector2(randf(),randf()).normalized()
var speed : float = randf() * 100

func _init(): 
	set_as_top_level(true) 
	
func _process(delta):
	position += movement * delta * speed 

func _set_rotation(rotation):
	self.rotation = rotation

func _set_position(position):
	self.position = position 
