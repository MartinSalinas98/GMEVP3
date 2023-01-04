
extends Spatial

var speed = 0.5
var movement = Vector3(0,0,0)
var action = 0
var in_action = false

func _ready():
	$MovementTimer.start(1)


func _process(delta):
	$AnimationPlayer.get_animation("swimming").set_loop(true)
	$AnimationPlayer.get_animation("stay").set_loop(true)
	if not in_action:
		if action == 0:
			in_action = true
			$AnimationPlayer.current_animation = "swimming"
			movement = Vector3(0,0,-1)
			rotation_degrees = Vector3(0,180,0)
		if action == 1:
			in_action = true
			$AnimationPlayer.current_animation = "swimming"
			movement = Vector3(0,0,1)
			rotation_degrees = Vector3(0,0,0)
		if action == 2:
			in_action = true
			$AnimationPlayer.current_animation = "swimming"
			movement = Vector3(-1,0,0)
			rotation_degrees = Vector3(0,270,0)
		if action == 3:
			in_action = true
			$AnimationPlayer.current_animation = "swimming"
			movement = Vector3(1,0,0)
			rotation_degrees = Vector3(0,90,0)
			
		if action == 4:
			in_action = true
			movement = Vector3(0,0,0)
			$AnimationPlayer.current_animation = "stay"
			
	movement = movement.normalized()
	translation += movement * speed * delta




func _on_MovementTimer_timeout():
	action = floor(rand_range(0, 4.9))
	in_action = false
	$MovementTimer.wait_time =  floor(rand_range(4,8))



func _on_greenFish_body_entered(body):
	body.movement.z = -1*body.speed
	body.rotation_degrees = Vector3(0,180,0)
