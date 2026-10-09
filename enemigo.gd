extends CharacterBody2D


const SPEED = 100.0
var velocidad_actual = -SPEED
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	if $RayCastIzquierda2D.is_colliding():
		velocidad_actual = -SPEED*2
	else:
		velocidad_actual = -SPEED

	
	velocity.x = velocidad_actual

	move_and_slide()
