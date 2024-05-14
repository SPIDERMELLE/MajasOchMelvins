extends CharacterBody2D

class_name Player
@export var Bullet : PackedScene
@export var move_speed = 100
@onready var health = $Health

var dead = false

func _process(delta):
	if Input.is_action_just_pressed("exit"):
		get_tree().quit()
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()
	pass

func _physics_process(delta):
	if dead:
		return
	var movement_direction = Input.get_vector("left", "right", "up", "down")
	velocity = movement_direction * move_speed
	move_and_slide()
	if Input.is_action_just_pressed("shoot"):
		shoot()
func hit():
	health.Health -=20
	
func shoot():
	var b = Bullet.instantiate()
	get_tree().root.add_child(b)
	b.transform = $Muzzle.global_transform
	
func killed():
	if dead:
		return
	dead = true
