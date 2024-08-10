extends "res://Scripts/Entity.gd"


var Player # Variable del jugador para conocer la posición. Se da valor al crear el enemigo en la escena

func _ready():
	pass


# Método estándar de desplazamiento. Se sobreescribe según el comportamiento específico de los enemigos.
func _process(delta):
	# Se obtiene la dirección hacia el jugador
	var direction_to_player = (Player.global_position - global_position).normalized()

	# Animaciones
	#if direction_to_player.length() > 0:
		#$AnimatedSprite.play()
	#else:
		#$AnimatedSprite.stop()

	# Se actualiza la posición dependiendo de donde se encuentre el jugador
	position += direction_to_player * speed * delta
