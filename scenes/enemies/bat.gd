extends Enemy

func _physics_process(_delta: float) -> void:
	var player_direction : Vector2 = get_player_direction()
	velocity = player_direction * speed
	move_and_slide()

