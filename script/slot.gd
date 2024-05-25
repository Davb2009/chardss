extends ColorRect

@onready var filter_path = $Filter
var slot_ID := -1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_background(c)-> void:
	color = c
