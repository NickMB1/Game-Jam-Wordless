extends Area2D
var plantavel = false
var BrotoCenoura = preload("res://Assets/BrotoCenoura.png")
var CenouraCrescida = preload("res://Assets/CenouraCresceu.png")
@onready var sprite = $Sprite2D
@onready var ocupado = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if plantavel == true:
		if Input.is_action_just_pressed("Interact"):
			if Global.seeds > 0 and ocupado == false:
				Global.seeds = Global.seeds - 1
				sprite.texture = BrotoCenoura
				print("Sementes: ", Global.seeds)
				ocupado = true
				$Timer_Planta.start()
				
			if sprite.texture == CenouraCrescida:
				Global.plantas = Global.plantas + 1
				sprite.texture = null
				ocupado = false
			else:
				print("Não pode plantar")


func _on_body_entered(body: Node2D) -> void:
	plantavel = true
	print("O player colidiu")


func _on_body_exited(body: Node2D) -> void:
	plantavel = false
	print ("O player saiu")


func _on_timer_planta_timeout() -> void:
	sprite.texture = CenouraCrescida
	print("Plantas: ", Global.plantas)
