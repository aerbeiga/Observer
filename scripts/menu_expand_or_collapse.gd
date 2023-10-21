extends Button


func _on_expand_or_collapse_pressed():
	if self.text == 'Collapse':
		self.text = 'Expand'
		collapse()
	else:
		self.text = 'Collapse'
		expand()

func get_container_y():
	return $v_box_container2.position.y

func collapse():
	var tween = create_tween().set_parallel(true)
	tween.tween_property($v_box_container2, 'position:y', get_container_y() - 256, 0.4)
	tween.tween_property($v_box_container2, 'modulate:a8', 0, 0.4)

func expand():
	var tween = create_tween().set_parallel(true)
	tween.tween_property($v_box_container2, 'position:y', get_container_y() + 256, 0.4)
	tween.tween_property($v_box_container2, 'modulate:a8', 255, 0.4)
