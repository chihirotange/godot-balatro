extends Node
@onready var card = $"."

var isCursorOver: bool = false
var isDragging: bool = false

func _on_mouse_entered():
	isCursorOver = true

func _on_mouse_exited():
	isCursorOver = false

func _input(event):
	if event is InputEventMouseButton && event.is_pressed() && isCursorOver:
		isDragging = true
		print("is dragging")
	if isDragging && event is InputEventMouseMotion:
		#print(card.global_position)
		card.global_position = event.global_position
		#card.position = event.position
