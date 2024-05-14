extends Node2D

# Variables to control the movement
var target_node: Node2D # Set this in the editor by assigning the target node
@export var movement_speed: float = 50.0 # Adjust this value to change the speed of movement

func _ready():
	target_node =  get_parent().get_node("CharacterBody2D")
	print("Target Node:", target_node) # Debug message

func _process(delta: float) -> void:
	if target_node != null:
		# Calculate the direction towards the target node
		var direction = (target_node.global_position - global_position).normalized()
		
		# Calculate the distance to the target node
		var distance = global_position.distance_to(target_node.global_position)
		
		# Move the node towards the target node
		global_position += direction * min(movement_speed * delta, distance)
	else:
		print("Target node not assigned!") # Debug message
