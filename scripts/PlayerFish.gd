extends KinematicBody

var speed = 1
var movement = Vector3(0,0,0)
var camera_on = false
var eating = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("Still")
	$AnimationPlayer.get_animation("Swimming").set_loop(true)
	$AnimationPlayer.get_animation("Eating").set_loop(true)
	$AnimationPlayer.get_animation("Eating").set_loop(true)
	


func _physics_process(delta):
	movement = movement.normalized()
	translation += movement * speed * delta
	
	
	
	
	

func _input(event):
	
	if event.is_action_pressed("ui_down"):
		$AnimationPlayer.play("Swimming")
		movement = Vector3(1,0,0)
		rotation_degrees = Vector3(0,0,0)
	elif event.is_action_pressed("ui_up"):
		$AnimationPlayer.play("Swimming")
		movement = Vector3(-1,0,0)
		rotation_degrees = Vector3(0,180,0)
	elif event.is_action_pressed("ui_left"):
		$AnimationPlayer.play("Swimming")
		movement = Vector3(0,0,1)
		rotation_degrees = Vector3(0,-90,0)
	elif event.is_action_pressed("ui_right"):
		$AnimationPlayer.play("Swimming")
		movement = Vector3(0,0,-1)
		rotation_degrees = Vector3(0,90,0)
	elif event.is_action_pressed("ui_su"):
		$AnimationPlayer.play("Swimming")
		movement = Vector3(0,1,0)
		rotation_degrees = Vector3(0,-180,90)
	elif event.is_action_pressed("ui_giu"):
		$AnimationPlayer.play("Swimming")
		movement = Vector3(0,-1,0)
		rotation_degrees = Vector3(0,0,-90)
	elif event.is_action_pressed("ui_accept"):
		$AnimationPlayer.play("Still")
		movement = Vector3(0,0,0)
		
		
	elif event.is_action_pressed("ui_eating"):
		if eating == false:
			$AnimationPlayer.play("Eating")
			eating =true
			
		elif eating == true:
			$AnimationPlayer.play("Swimming")
			eating = false
		
	
		
		
	
		
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
	
		
