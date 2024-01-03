extends StaticBody2D

# The speed of the movement in pixels per second
var speed = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#move_to_ball(delta)
	pass

func move_to_ball(delta):
	# The target x value to move towards
	var target_y = $"../Ball".position.y
	# Check if the node is close enough to the target x value
	if abs(position.y - target_y) > 1:
		# Calculate the direction of the movement (-1 for left, 1 for right)
		var direction = sign(target_y - position.y)
		# Move the node by the speed times the direction and the delta time
		move_local_y(speed * direction * delta)
	else:
		# Snap the node to the target x value
		position.y = target_y
	self.position.x = 0


func _on_timer_timeout():
	self.position.y = $"../Ball".position.y
