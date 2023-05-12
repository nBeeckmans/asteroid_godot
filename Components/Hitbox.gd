extends Area2D

@export var health : HealthComponent

func _on_area_entered(area):
	health.health = health.health - 1
	
