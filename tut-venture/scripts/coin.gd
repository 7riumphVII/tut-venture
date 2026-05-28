extends Area2D

@onready var game_manager: Node = %GameManager
@onready var anim: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	game_manager.add_point()
	anim.play("pickup_anim")
