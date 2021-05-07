extends Node2D

var velocidade = 2000
var direcao = 1

func _ready():
	set_process(true)
	pass # Replace with function body.

func _process(delta):
	position = Vector2(position.x + velocidade * direcao * delta, position.y)
