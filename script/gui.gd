extends Control

@onready var slot_scene = preload("res://scene/slot.tscn")
@onready var board_grid = $ChessBoard/BoardGrid

var grid_array := []

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(64):
		create_slot()
		
	var colorbit =0
	for i in range(8):
		for j in range(8):
			if j%2 == colorbit:
				grid_array[i*8+j].set_background(Color.BISQUE)
		if colorbit==0:
			colorbit=1
		else: colorbit=0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func create_slot():
	var new_slot = slot_scene.instantiate()
	new_slot.slot_ID = grid_array.size()
	board_grid.add_child(new_slot)
	grid_array.push_back(new_slot)
	# new_slot.slot_clicked.connect(_on_slot_clicked)
