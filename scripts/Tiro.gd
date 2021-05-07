extends Node2D

var velocidade = 800
var direcao = 1
var contato = false
var tempo = 0

func _ready():
	set_process(true)
	pass # Replace with function body.

func _process(delta):
	if(!contato):
		$Sprite.play("tiro2")
		position = Vector2(position.x + velocidade * direcao * delta, position.y)
		tempo += delta
		if(tempo > 0.5):
			$Sprite.stop()
			$Sprite.play("tirofim")
			queue_free()

func _on_contato_body_entered(body):
	contato = true
	$Sprite.stop()
	$Sprite.play("tirofim")
	body.dano()
	get_node("anim").play("explosao")
	pass # Replace with function body.
	
func fim():
	queue_free()
