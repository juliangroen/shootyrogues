extends Node2D

var Bat: PackedScene = preload("res://scenes/enemies/bat.tscn")

func _ready() -> void:
	var spawn_timer: Timer = $SpawnTimer
	spawn_timer.timeout.connect(_on_spawn_timer_timeout)

func _on_spawn_timer_timeout() -> void:
	var bat_instance: Node2D = Bat.instantiate()
	add_child(bat_instance)
	bat_instance.global_position = Vector2(-16, -16)

