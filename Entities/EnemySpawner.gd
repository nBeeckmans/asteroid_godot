extends Node2D

@export var Asteroid : EnemyScene

func _on_spawn_timer_timeout():
	var A = Asteroid.instantiate() 
	var mobSpawnLocation = get_node("EnemyPath/EnemySpawnLocation")
	mobSpawnLocation.progress_ratio = randf() 
	var direction = mobSpawnLocation.rotation + PI/2
	A.position = mobSpawnLocation.position 
	direction += randf_range(-PI/4, PI/4)
	A.rotation = direction 
	
	add_child(A)
