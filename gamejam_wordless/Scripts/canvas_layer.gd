extends CanvasLayer

@onready var inventory = $Inventory

func _ready():
	inventory.close()

func _input(event):
	if event.is_action_pressed("AbrirInventario"):
		if inventory.is0pen:
			inventory.close()
		else:
			inventory.open() 
