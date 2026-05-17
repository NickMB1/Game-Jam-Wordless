extends CanvasLayer

@onready var inventory = $Inventory

@onready var tela_trade = $Trader

var trade = false

func _ready():
	inventory.close()
	tela_trade.close()

func _input(event):
	if event.is_action_pressed("AbrirInventario"):
		if inventory.is0pen:
			inventory.close()
		else:
			inventory.open() 
	if event.is_action_pressed("Interact"):
		if  trade:
			if tela_trade.is0pen:
				tela_trade.close()
			else:
				tela_trade.open()


func _on_trader_teste_body_entered(body: Node2D) -> void:
	trade = true
	print("Canvas funcionando")



func _on_trader_teste_body_exited(body: Node2D) -> void:
	trade = false
