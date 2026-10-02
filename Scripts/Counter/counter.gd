class_name Counter extends Control

@onready var button: Button = $Button
@onready var label: Label = $Label

var value: int = 0
var button_pressed: bool = false

func _ready() -> void:
	print("COUNTER ESTÁ A FUNCIONAR!")
	print("BUTTON: ", button)

	update_label()

func _on_button_pressed() -> void:
	print("BOTÃO PRESSIONADO!")
	value += 1
	update_label()

func update_label() -> void:
	label.text = str(value)
