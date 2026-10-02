class_name CounterBaseState extends RefCounted

var counter: Counter

func _init(c: Counter) -> void:
	counter = c

func enter() -> void:
	pass

func exit() -> void:
	pass

func tick() -> void:
	pass
