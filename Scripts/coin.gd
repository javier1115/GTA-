extends Area2D

@onready var game_manager = %"Game Manager"
@onready var animation = $AnimationPlayer
func _on_body_entered(body):
	game_manager.add_point() 
	animation.play("pickup")
	
