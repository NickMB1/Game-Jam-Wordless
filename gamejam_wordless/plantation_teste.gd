extends Area2D
var plantavel = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if plantavel == true:
		if Input.is_action_just_pressed("Interact"):
			if Global.seeds > 0:
				Global.seeds = Global.seeds - 1
				print("Sementes: ", Global.seeds)
				$Timer_Planta.start()
			else:
				print("Não pode plantar")


func _on_body_entered(body: Node2D) -> void:
	plantavel = true
	print("O player colidiu")


func _on_body_exited(body: Node2D) -> void:
	plantavel = false
	print ("O player saiu")


func _on_timer_planta_timeout() -> void:
	Global.plantas = Global.plantas + 1
	print("Plantas: ", Global.plantas)
