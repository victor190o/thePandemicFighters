extends StaticBody2D

var flip = true
const GRAVITY = 30
var posicao_inicial
var posicao_final
var velocidade = 0.05
var posicao_atual
var morto = false

var motion = Vector2()

func _ready():
	$Sprite.play("walk")
	posicao_inicial = $".".position.x
	posicao_final = posicao_inicial + 60

func _physics_process(delta):
	motion.y += GRAVITY

func _process(delta):
	if(!morto):
		if(posicao_inicial <= posicao_final and flip):
			$".".position.x += velocidade
			posicao_atual = $".".position.x
			$Sprite.flip_h = true
			if($".".position.x >= posicao_final):
				flip = false
				
		if($".".position.x >= posicao_inicial and !flip):
			$".".position.x -= velocidade
			posicao_atual = $".".position.x
			$Sprite.flip_h = false
			if($".".position.x <= posicao_inicial):
				flip = true
			
func dano():
	morto = true
	$Sprite.stop()
	$Sprite.play("die")
	get_node("anim").play("die")
	
func die():
	$".".queue_free()
