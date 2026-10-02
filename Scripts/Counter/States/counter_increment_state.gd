class_name CounterIncrementState extends CounterBaseState

func enter() -> void:
	print("INCREMENTANDO")
	counter.value += 1
	counter.update_label()
	counter.state_machine.change(
		CounterIdleState.new(counter)
	)

func exit() -> void:
	pass

func tick() -> void:
	pass
