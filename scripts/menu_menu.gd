extends Control


func _ready():
	$v_box_container/level_selector.grab_focus()

func _on_level_selector_pressed():
	get_tree().change_scene_to_file("res://scenes/level_selector.tscn")

func _on_quit_pressed():
	get_tree().quit()
