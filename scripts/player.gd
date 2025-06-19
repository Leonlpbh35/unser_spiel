extends CharacterBody2D

@export var speed = 200
@export var stamina = 100
@export var sprint = 280

var is_sprinting = false
func get_input():
	pass
func _physics_process(_delta):
	var input_direction = Input.get_vector("left","right","up","down")
	velocity = input_direction * speed
	if Input.is_action_pressed("sprint") and stamina > 0:
		is_sprinting = true
		velocity = input_direction * sprint
	
	
	move_and_slide()
