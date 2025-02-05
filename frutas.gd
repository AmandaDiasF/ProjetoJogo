extends Area2D

var moeda := 1

func _on_body_entered(body: Node2D) -> void:
	$anim.play("coletar")
	await $colisao.call_deferred("queue_free")
	Globals.moedas += moeda
func _on_anim_animation_finished() -> void:
	queue_free()
