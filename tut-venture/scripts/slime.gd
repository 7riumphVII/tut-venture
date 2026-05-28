extends Node2D

const SPEED = 60
var direction = 1

@onready var rcl: RayCast2D = $RayCastLeft
@onready var rcr: RayCast2D = $RayCastRight
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if rcl.is_colliding():
		direction=1
		sprite.flip_h=false
	if rcr.is_colliding():
		direction=-1
		sprite.flip_h=true
	position.x += direction * SPEED * delta
