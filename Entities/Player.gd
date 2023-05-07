extends Node2D

@export var SPEED : float = 10.0

@export var UP = "ui_up"
@export var DOWN = "ui_down"
@export var LEFT = "ui_left"
@export var RIGHT = "ui_right"

var velocity : Vector2

func _process(delta):
	_move(delta)
	_rotate()

func _move(deltaValue):
	var playerInput = Input.get_vector(LEFT,RIGHT,UP,DOWN)
	velocity = velocity + (SPEED * playerInput - velocity) * deltaValue
	position += velocity

func _rotate():
	rotation = atan2(velocity.y, velocity.x) + PI/2
