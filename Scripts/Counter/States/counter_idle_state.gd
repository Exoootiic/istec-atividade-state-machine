class_name CounterIdleState extends CounterBaseState

func enter() -> void:
	pass

func exit() -> void:
	pass

func tick() -> void:
	if counter.button_pressed:
		print("MUDANDO PARA INCREMENT")
		counter.button_pressed = false
		counter.state_machine.change(
			CounterIncrementState.new(counter)
		)
