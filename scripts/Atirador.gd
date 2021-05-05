extends Node2D

onready var atiradando = preload("res://scenes/tiro.tscn")

var direcao = 1

var tiropressionado = false

func _ready():
	set_process(true)
	pass
	
func _process(delta):
	
	
	var direita = Input.is_action_just_pressed("ui_right")
	var esquerda = Input.is_action_just_pressed("ui_left")
	var tiro = Input.is_action_just_pressed("atirar")
	
	if direita:
		direcao = 1
	if esquerda:
		direcao = -1
	
	if tiro and direcao == 1 and tiropressionado == false:
		var tirobase = atiradando.instance()
		tirobase.direcao = 1
		tirobase.position = global_position
		position = Vector2(18, 7)
		get_node("../../").add_child(tirobase)
		tiropressionado = true
		
	if tiro and direcao == -1 and tiropressionado == false:
		var tirobase = atiradando.instance()
		tirobase.direcao = -1
		tirobase.position = global_position
		position = Vector2(-18, 7)
		get_node("../../").add_child(tirobase)
		tiropressionado = true
		
	if !tiro:
		tiropressionado = false
		
		
		
