extends CharacterBody2D
class_name Enemy

@export var speed: int = EnemyConfig.base_speed

@onready var current_scene: Node2D = get_tree().current_scene
@onready var player: Node2D = get_node("/root/%s/Player" % current_scene.name)

func get_player_direction() -> Vector2:
	if player:
		return (player.global_position - global_position).normalized()
	else:
		return Vector2.ZERO
