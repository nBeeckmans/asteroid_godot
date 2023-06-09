extends Node2D

@export var Asteroid : PackedScene
@export var Player : Player

@onready var CURVE = $EnemyPath.curve
	
func _on_spawn_timer_timeout():
	var spawnLocation = _set_spawn_location()
	_spawn_enemy_at(spawnLocation)

func _set_spawn_location(): 
	var mobSpawnLocation = get_node("EnemyPath/EnemySpawnLocation")
	mobSpawnLocation.progress_ratio = randf()
	return mobSpawnLocation

func _spawn_enemy_at(spawnLocation): 
	var asteroidInstance = Asteroid.instantiate() 
	_set_bahavior_of(asteroidInstance,spawnLocation) 
	add_child(asteroidInstance)

func _set_bahavior_of(asteroidInstance, spawnLocation): 
	var direction = spawnLocation.rotation + PI/2
	direction += randf_range(-PI/4, PI/4)
	asteroidInstance._set_rotation(direction)
	asteroidInstance._set_position(spawnLocation.position)	



func _physics_process(delta):
	CURVE.set_point_position(0, Player.position + Vector2(-300, 300))
	CURVE.set_point_position(1, Player.position + Vector2(300, 300))
	CURVE.set_point_position(2, Player.position + Vector2(300, -300))
	CURVE.set_point_position(3, Player.position + Vector2(-300, -300))
