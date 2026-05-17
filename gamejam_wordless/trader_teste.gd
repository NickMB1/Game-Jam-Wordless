extends Area2D
var trade: bool = false

@onready var tela = $"../../CanvasLayer/Trader"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	trade = true
	print("O player colidiu")



func _on_body_exited(body: Node2D) -> void:
	trade = false
	print("O player saiu")
