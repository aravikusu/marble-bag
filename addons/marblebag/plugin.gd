@tool
extends EditorPlugin


func _enter_tree() -> void:
	add_custom_type(
		"MarbleBag",
		"Object",
		preload("res://addons/marblebag/marble_bag.gd"),
		preload("res://addons/marblebag/icon.svg"),
	)


func _exit_tree() -> void:
	remove_custom_type("MarbleBag")
