extends Area2D
var trade = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if trade == true:
		if Input.is_action_just_pressed("Interact"):
			if Global.plantas > 0:
				Global.seeds = Global.seeds + 2
				Global.plantas = Global.plantas - 1
				print("Sementes: ", Global.seeds)
				print("Plantas: ", Global.plantas)
			else:
				print("POBRE")


func _on_body_entered(body: Node2D) -> void:
	trade = true
	print("O player colidiu")



func _on_body_exited(body: Node2D) -> void:
	trade = false
	print("O player saiu")
