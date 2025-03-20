extends CharacterBody2D
class_name Player

@export var speed: int = PlayerConfig.base_speed

func get_input() -> void:
	var input_direction : Vector2 = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(_delta: float) -> void:
	get_input()
	move_and_slide()
