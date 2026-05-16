extends CharacterBody2D

var MV_SPEED = 200;
var character_direction : Vector2

@onready var animation_test = $Fazendeiro_Animation as AnimatedSprite2D

@export var inventory: Inventory

func _enter_tree():
	Global.Character_node = self
	Global.seeds = 3
	print("Sementes Iniciais: ",Global.seeds)
	print("Plantas Iniciais: ", Global.plantas)


func _on_fazendeiro_collision_area_entered(area):
	if area.has_method("collect"):
		area.collect(inventory)


func _physics_process(_delta):
	character_direction.x = Input.get_axis("Move_Left", "Move_Right")
	character_direction.y = Input.get_axis("Move_Up", "Move_Down")
	
	if character_direction.x > 0: $Fazendeiro_Animation.flip_h = false
	elif character_direction.x < 0: $Fazendeiro_Animation.flip_h = true
	
	if character_direction:
		velocity = character_direction * MV_SPEED
	else:
		velocity = velocity.move_toward(Vector2.ZERO, MV_SPEED)
	move_and_slide()
	
