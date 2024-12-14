extends Sprite2D

var velocity = Vector2(0, 4)
var gravity = Vector2(0,1.3)
var pressed = false
var jumpState = false
var jumpCount = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#velocity.y = 10
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print("flappy", position)
	if Input.is_key_pressed(KEY_SPACE) and pressed != true:
		position -= velocity
		jumpState = true
		pressed= true
	if !Input.is_key_pressed(KEY_SPACE):
		pressed= false
	
	if jumpState == true:
		rotation = -.3
		position -= velocity
		jumpCount += 1
		if jumpCount > 6:
			jumpCount= 0 
			jumpState = false
	else: 
		rotation += .1
	position += gravity
	
	pass
	
	
