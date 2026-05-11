extends Area2D
var coletavel = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if coletavel == true:
		if Input.is_action_just_pressed("Interact"):
			Global.seeds = Global.seeds + 1
			print(Global.seeds)
			queue_free()


func _on_body_entered(body: Node2D) -> void:
	coletavel = true
	print("O player colidiu")



func _on_body_exited(body: Node2D) -> void:
	coletavel = false
	print("O player saiu")
