class_name CounterStateMachine extends RefCounted

var counter: Counter
var current_state: CounterBaseState

func _init(c: Counter) -> void:
	counter = c
	change(CounterIdleState.new(counter))

func tick() -> void:
	current_state.tick()

func change(new_state: CounterBaseState) -> void:
	if current_state != null:
		current_state.exit()

	current_state = new_state
	current_state.enter()
