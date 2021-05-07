extends Node2D

var velocidade = 800
var direcao = 1
var tempo = 0

func _ready():
	set_process(true)
	pass # Replace with function body.

func _process(delta):
	position = Vector2(position.x + velocidade * direcao * delta, position.y)
	tempo += delta
	if(tempo > 0.5):
		queue_free()	

func _on_contato_body_entered(body):
	body.dano()
	pass # Replace with function body.
