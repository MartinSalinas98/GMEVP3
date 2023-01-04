extends Area

var on = false

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_snowButton_area_entered(area):
	#self.enabled = !self.enabled
		if on == false:
			$AnimationPlayer.play("on")
			
			
		if on == true:
			$AnimationPlayer.play("off")
			on = false
			
