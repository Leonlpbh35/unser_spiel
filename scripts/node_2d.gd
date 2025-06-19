extends Node2D

var Up = false
var Left = false
var Down = false
var Right = false

func get_input():
	pass
func _physics_process(_delta):
	get_input()
	if Input.is_action_pressed("left"):
		Left = true
	elif Input.is_action_pressed("right"):
		Right = true
	elif Input.is_action_pressed("up"):
		Up = true
	elif Input.is_action_pressed("down"):
		Down = true
	if  Left == true and Right == true and Up == true and Down == true:
		$text.text = "Test"
