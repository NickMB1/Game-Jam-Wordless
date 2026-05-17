extends Control

var is0pen: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	if Global.plantas > 0:
		Global.seeds = Global.seeds + 2
		Global.plantas = Global.plantas - 1
		print("Sementes: ", Global.seeds)
		print("Plantas: ", Global.plantas)
	else:
		print("POBRE")
		

func open():
	visible = true
	is0pen = true
	print("open funcionando")

func close():
	visible = false
	is0pen = false
	print("close funcionando")
