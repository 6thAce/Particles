extends Node2D

@onready var rocket = $RocketTrail
@onready var explosion = $Explosion
@onready var timer = $Timer

func _ready():
	start_firework()

func start_firework():
	# Start the rocket
	rocket.emitting = true
	# Set timer to trigger explosion (adjust to match rocket travel time)
	timer.wait_time = 1.0
	timer.start()
 
func _on_Timer_timeout():
	# Stop rocket trail
	rocket.emitting = false
	# Trigger explosion
	explosion.emitting = true
