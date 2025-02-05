extends Area2D

# Chamado quando o nó entra pela primeira vez na árvore de cenas.
func _ready() -> void:
	pass # Corpo da função se necessário.

# Chamado a cada quadro. 'delta' é o tempo decorrido desde o último quadro.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	call_deferred("change_level")

func change_level():	
	get_tree().change_scene_to_file("res://Fases/" + name + ".tscn")
		
