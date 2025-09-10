extends CharacterBody2D
var speed =200;
@export var bullet_element :Resource
#var bullet_element = preload("res://Elements/laser.tscn")
func _process(delta: float) -> void:
	var move_dir= Input.get_axis("Left","Right");
	self.velocity.x=move_dir*speed;
	if Input.is_action_just_pressed("Shoot"):
		var new_bullet = bullet_element.instantiate()
		get_node("/root").add_child(new_bullet);
		new_bullet.position=self.position;
	
	move_and_slide();
	
