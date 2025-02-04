extends Area2D






func _on_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene();
	# get_tree()change_scene("res://Levels/Level_01.tscn") carrega a propria cena,
	#ou passa para uma próxima cena.
	
