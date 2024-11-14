extends CharacterBody2D

const GRAVITY: float = 1000.0
const POWER: float = -200.0
@onready var sprite: AnimatedSprite2D = $Sprite


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	
	velocity.y += GRAVITY * delta
	
	fly()
	
	move_and_slide()
	
	if is_on_floor() or is_on_ceiling():
		die()


func fly() -> void:
	if Input.is_action_just_pressed("fly"):
		print("jump!")
		velocity.y = POWER


func die() -> void:
	set_physics_process(false)
	sprite.stop()
