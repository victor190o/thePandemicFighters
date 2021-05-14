tool

extends Area2D

export var width = 50 setget set_width
export var height = 50 setget set_height

var isColision = false

onready var tween = get_node("Tween")

func _ready():
	if(!Engine.is_editor_hint()):
		get_node("balao").hide()
	pass
	
func _draw():
	get_node("balao").width = width
	get_node("balao").height = height

func _on_tip_body_entered(body):
	if(!isColision):
		tween.interpolate_method(self, "resize", 0, 1, 1.0, Tween.TRANS_BOUNCE, Tween.EASE_OUT, 0)
		tween.start()
	pass # Replace with function body.

func _on_tip_body_exited(body):
	isColision = true
	get_node("Timer").start()
	pass # Replace with function body.

func resize(val):
	if val > .1:
		get_node("balao").show()
	else:
		get_node("balao").hide()
	get_node("balao").width = width * val
	get_node("balao").height = height * val

func set_width(val):
	width = val
	update()
	
func set_height (val):
	height = val
	update()


func _on_Timer_timeout():
	tween.interpolate_method(self, "resize", 1, 0, .5, Tween.TRANS_EXPO, Tween.EASE_OUT, 0)
	tween.start()
	isColision = false
	pass # Replace with function body.
