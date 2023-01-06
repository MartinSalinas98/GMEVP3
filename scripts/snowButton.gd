extends Area

var on = false


func _on_snowButton_body_entered(body):
	if body.name == "greenFish" or body.name == "PezDani":
		body.movement.z = -1*body.speed
		body.rotation_degrees = Vector3(0,180,0)
		
		if on == false:
			$AnimationPlayer.play("on")
			on = true
			for child in get_children():
				if child.name == "snow":
					child.emitting = true
		
		elif on == true:
			$AnimationPlayer.play("off")
			on = false
			for child in get_children():
				if child.name == "snow":
					child.emitting = false
				
			
