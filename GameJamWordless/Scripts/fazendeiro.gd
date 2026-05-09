extends CharacterBody2D
var MV_SPEED = 225

func _physics_process(_delta):

	var direction1 := Input.get_axis("Move_Up", "Move_Down")

	if direction1:
		velocity.y = direction1 * MV_SPEED

	else:
		velocity.y = move_toward(velocity.y, 0, MV_SPEED)


	var direction2 := Input.get_axis("Move_Left", "Move_Right")

	if direction2:
		velocity.x = direction2 * MV_SPEED

	else:
		velocity.x = move_toward(velocity.x, 0, MV_SPEED)
		move_and_slide()
