extends Area



func _on_RightWall_body_entered(body):
	if body.name == "GreenFish" or body.name == "BrownFish" or body.name == "PlayerFish":
		if(body.rotation_degrees == Vector3 (0,90,0)):
			body.movement = -1*body.speed * body.movement
			body.rotation_degrees = Vector3(0,-90,0)
