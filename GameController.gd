extends Node

# Variable para llevar el conteo de latas
var lata_counter : int = 0

# Referencia al Label3D para mostrar el contador
@onready var lata_display = get_node("/root/MainScene/Player/LataCounterDisplay")
# Función para incrementar el contador
func incrementar_lata():
	var current_scene = get_tree().current_scene
	if current_scene != null:
		var audio_player = current_scene.get_node("AudioStreamPlayer")
		if audio_player != null:
			audio_player.play()
			lata_counter += 1
			print("Latas recogidas: ", lata_counter)
			update_display()

			if lata_counter == 4:
				print("¡Has recogido todas las latas! Ahora te llevamos a los créditos...")
				get_tree().change_scene_to_file("res://Creditos.tscn")
		else:
			print("Error: No se encontró el AudioStreamPlayer en la escena cargada.")
	else:
		print("Error: No se encontró la escena cargada.")

# Función para actualizar el texto del Label3D
func update_display():
	if lata_display != null:
		print("Lata display encontrado")
		lata_display.text = "Latas: " + str(lata_counter)
	else:
		print("Error: LataDisplay no encontrado")
