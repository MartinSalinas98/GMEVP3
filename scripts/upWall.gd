extends Area


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_upWall_body_entered(body):
	body.movement = -1*body.speed * body.movement
	
	if body.name == "BrownFish":
#		if(body.rotation_degrees == Vector3 (0,-180,90)):
#			body.movement = -1*body.speed * body.movement
		body.rotation_degrees = Vector3(0,0,-90)
	elif body.name == "PlayerFish":
#		if(body.rotation_degrees == Vector3 (0,-180,90)):
#			body.movement = -1*body.speed * body.movement
		body.rotation_degrees = Vector3(0,0,-90)
	elif body.name == "GreenFish":
#		if(body.rotation_degrees == Vector3 (-90,0,-90)):
#			body.movement = -1*body.speed * body.movement
		body.rotation_degrees = Vector3(90,-180,90)
