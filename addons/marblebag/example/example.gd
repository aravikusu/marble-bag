extends Control

var bag: MarbleBag

@onready var content_label: Label = %Contents
@onready var last_label: Label = %Last


func _ready() -> void:
	bag = MarbleBag.new([false, false, false, false, false, false, false, false, true, true])


func _process(delta: float) -> void:
	content_label.text = str(bag._currentBag)


func _on_take_out_pressed() -> void:
	var next: bool = bag.next()
	content_label.text = str(next)
