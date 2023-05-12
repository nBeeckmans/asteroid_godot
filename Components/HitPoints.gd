extends Node2D
class_name HealthComponent
 
@export var MAX_HEALTH = 3

var health 

func _ready(): 
	health = MAX_HEALTH 

func _process(delta): 
	_death()
	
	
func _death(): 
	if health < 0: 
		get_parent()._death_handler() 
		
