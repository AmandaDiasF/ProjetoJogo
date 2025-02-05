extends CharacterBody2D

#export var health = 1
const SPEED = 600
var direction = -1

@onready var bate_volta = $bate_volta as RayCast2D
@onready var texture := $anim as AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
#garante que o inimigo irá bater com o mundo e com o player
#se atentar aos layers.
	if bate_volta.is_colliding():
		direction *= -1
		bate_volta.scale.x *= -1
		
#garante que a textura irá inverter
	if direction == -1:
		texture.flip_h = true
	else:
		texture.flip_h = false

	velocity.x = direction * SPEED * delta
	move_and_slide()
