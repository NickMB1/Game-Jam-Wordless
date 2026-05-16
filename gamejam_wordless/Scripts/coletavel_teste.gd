extends Area2D
var coletavel = false

@export var itemRes: InventoryItem

func collect(inventory: Inventory):	
	inventory.insert(itemRes)
	Global.seeds = Global.seeds + 1
	print("Sementes: ", Global.seeds)
	queue_free()
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_body_entered(body: Node2D) -> void:
	coletavel = true
	



func _on_body_exited(body: Node2D) -> void:
	coletavel = false
	
	
