extends CharacterBody2D


const SPEED = 100.0

func _process(delta):
	var directiony = 0
	var directionx = 0
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if Input.is_action_pressed("left"):
		directionx = -1
	
	if Input.is_action_pressed("right"):
		directionx = 1
	
	if directionx != 0:
		position.x += directionx * SPEED * delta
	
	if Input.is_action_pressed("up"):
		directiony = -1
	
	if Input.is_action_pressed("down"):
		directiony = 1
	
	if directiony != 0:
		position.y += directiony * SPEED * delta
	
	if directionx && directionx != 0:
		position.y/2
		position.x/2
