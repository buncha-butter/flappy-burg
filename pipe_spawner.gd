extends Node2D
var pipes = []
var children = []
var velocity = Vector2(-.8, 0)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pipes = get_children()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for i in range(pipes.size()):
		children = pipes[i].get_children()
		for j in range(children.size()):
			children[j].position += velocity
			if children[j].position.x < -300 :
				children[j].position.x = 100
	pass
	
