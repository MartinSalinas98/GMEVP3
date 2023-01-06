extends KinematicBody

var speed = 10
var movement = Vector3(0,0,0)
var camera_on = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("Still")
	


func _physics_process(delta):
	movement = movement.normalized()
	translation += movement * speed * delta
	
	if movement == Vector3(0,0,0):
		$AnimationPlayer.play("Still")
	else:
		$AnimationPlayer.play("Swimming")
	

func _input(event):
	if event.is_action_pressed("ui_down"):
		movement = Vector3(1,0,0)
		rotation_degrees = Vector3(0,0,0)
	elif event.is_action_pressed("ui_up"):
		movement = Vector3(-1,0,0)
		rotation_degrees = Vector3(0,180,0)
	elif event.is_action_pressed("ui_left"):
		movement = Vector3(0,0,1)
		rotation_degrees = Vector3(0,-90,0)
	elif event.is_action_pressed("ui_right"):
		movement = Vector3(0,0,-1)
		rotation_degrees = Vector3(0,90,0)
	elif event.is_action_pressed("ui_su"):
		movement = Vector3(0,1,0)
		rotation_degrees = Vector3(0,-180,90)
	elif event.is_action_pressed("ui_giu"):
		movement = Vector3(0,-1,0)
		rotation_degrees = Vector3(0,0,-90)
	elif event.is_action_pressed("ui_accept"):
		movement = Vector3(0,0,0)
		
	if event.is_action_pressed("ui_cam"):
		if camera_on == false:
			camera_on = true
			for child in get_children():
				var camera = get_node("Camera")
				camera.current = true
		elif camera_on == true:
			camera_on = false
			for child in get_children():
				var camera = get_node("Camera")
				camera.current = false
	
		
