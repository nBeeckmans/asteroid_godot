extends Node2D
class_name EnemyScene

var movement : Vector2 = Vector2(randf(),randf()).normalized()
var speed : float = randf() * 100

func _process(delta):
	position += movement * delta * speed 
