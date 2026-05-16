extends Control

var is0pen: bool = false

@onready var inventory: Inventory = preload("res://Inventario/PlayerInventario.tres")
@onready var slots: Array = $NinePatchRect/GridContainer.get_children()

func _ready():
	inventory.updated.connect(update)
	update()

func update():
	for i in range(min(inventory.items.size(), slots.size())):
		slots[i].update(inventory.items[i])

func open():
	visible = true
	is0pen = true
	
func close():
	visible = false
	is0pen = false
