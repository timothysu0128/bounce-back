extends CharacterBody2D
class_name Player
@export var speed := 200

@export var score := 0.0
func _physics_process(delta: float) -> void:
	var direction := Input.get_vector("left", "right", "up", "down")
	
	velocity = direction * speed
	
	move_and_slide()

func die():
	get_tree().quit()

func _process(delta: float) -> void:
	score += delta
	
	get_node("Label").text = "Score: " + str(score)
