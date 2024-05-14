extends Sprite2D

var number = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	
	print(number)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	position.y = position.y + 50 * delta
	
	pass
