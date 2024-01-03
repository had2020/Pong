extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	apply_force(Vector2(5000, 0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_exited(body):
	var x_force
	if body.is_in_group("enemy"):
		x_force = -500
		apply_force(Vector2(x_force,randi_range(1000, 20)))
	if body.is_in_group("player"):
		x_force= 500
		apply_force(Vector2(x_force,randi_range(1000, 20)))
