extends Node2D

var blue_score:int = 0

var red_score:int = 0

var can_score:bool

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _gameover():
	get_tree().reload_current_scene()


func _on_goalenemy_body_entered(body):
	blue_score = blue_score + 1
	if blue_score == 11:
		_gameover()
	$"../Blue Score".text = str(blue_score)


func _on_goalplayer_body_entered(body):
	red_score = red_score + 1
	if red_score == 11:
		_gameover()
	$"../Red Score".text = str(red_score)


func _on_timer_timeout():
	red_score = 0
	blue_score = 0
	$"../Blue Score".text = str(blue_score)
	$"../Red Score".text = str(red_score)
