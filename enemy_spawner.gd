extends Node2D

@export var enemy :PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func spawn(pos):
	var new_enemy := enemy.instantiate()
	add_child(new_enemy)
	new_enemy.position = pos


func _on_timer_timeout() -> void:
	var random_x := randf_range(0,1152)
	var random_y := randf_range(0, 648)
	
	
	spawn(Vector2(random_x,random_y))
