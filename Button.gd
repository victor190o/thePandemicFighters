extends Button

func _input(event):
	if event.is_action_pressed("ui_accept"): _on_Button_pressed()
	if event.is_action_released("ui_accept"): _on_Button_pressed()

func _on_Button_pressed():
	get_tree().change_scene("res://World.tscn")
	
	pass # Replace with function body.

