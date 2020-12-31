extends Node

func _ready():
	pass # Replace with function body.

func _process(delta):
	var full = Vector2(OS.get_real_window_size().x, OS.get_real_window_size().x)
	self.material.set_shader_param("mouse", self.get_parent().get_global_mouse_position() / full);
