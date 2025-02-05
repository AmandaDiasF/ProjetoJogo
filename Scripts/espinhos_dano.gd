extends Area2D

@onready var collision = $CollisionShape2D as CollisionShape2D
@onready var espinhos = $Sprite2D as Sprite2D

func _ready() -> void:
	collision.shape.size = espinhos.get_rect().size

func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		get_tree().reload_current_scene();
		
