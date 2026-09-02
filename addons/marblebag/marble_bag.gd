class_name MarbleBag
extends Object

var _fullBag: Array[Variant]
var _currentBag: Array[Variant] = []


func _init(content: Array[Variant]) -> void:
	assert(content, "Can't fill a MarbleBag with nothing.")
	_fullBag = content


func reset() -> void:
	_currentBag.clear()
	_currentBag.append_array(_fullBag)

	randomize()
	for i in range(len(_currentBag) - 1, 0, -1):
		var j: int = randi_range(0, min(i + 1, len(_currentBag) - 1))
		var swap: Variant = _currentBag[i]
		_currentBag[i] = _currentBag[j]
		_currentBag[j] = swap


func next() -> Variant:
	assert(
		len(_fullBag) != 0,
		"A MarbleBag has to have something in it for it to get the next thing...",
	)

	if _currentBag.is_empty():
		reset()

	var last: Variant = _currentBag.pop_back()

	return last
