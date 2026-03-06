extends AnimatedSprite2D

const SPEED = 60 

var direction = 1
@onready var ray_cast_right = $"kill zone/RayCast RIGHT"
@onready var ray_cast_left = $"kill zone/RayCast LEFT"

func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		flip_h = true 
	if ray_cast_left.is_colliding():
		direction = 1 
		flip_h = false 
	position.x += direction * SPEED * delta 
