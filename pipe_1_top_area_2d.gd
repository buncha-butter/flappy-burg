extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(position)
	pass


func _on_body_entered(body: Node2D) -> void:
	print("Hit")
	if body.is_in_group("Player"):
		print("Hit")
	pass # Replace with function body.
