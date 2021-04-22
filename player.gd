extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = 20
const SPEED = 260
const JUMP_HEIGHT = -550

var motion = Vector2()

# warning-ignore:unused_argument
func _physics_process(delta):
	
	motion.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
		$Sprite.flip_h = false
		$Sprite.play("run")
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
		$Sprite.flip_h = true
		$Sprite.play("run")
	else:
		motion.x = 0
		$Sprite.play("idle")
		
	if is_on_floor():
		if(Input.is_action_pressed("ui_up")):
			motion.y = JUMP_HEIGHT
	
	motion = move_and_slide(motion, UP)
