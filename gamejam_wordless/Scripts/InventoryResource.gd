extends Resource

class_name Inventory

signal updated

@export var items: Array[InventoryItem]

func insert(item: InventoryItem):
	for i in range(item.size()):
		if !items[i]:
			items[i] = item
			break
	updated.emit()
