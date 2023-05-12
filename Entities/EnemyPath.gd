extends Path2D

@export var NODE : Node2D
# Called when the node enters the scene tree for the first time.
func _ready():
	set_as_top_level(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = NODE.global_position
	print(position)
	
