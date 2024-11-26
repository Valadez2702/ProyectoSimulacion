extends Label3D

# Contador de latas
var lata_counter : int = 0

# Función para incrementar el contador
func incrementar_lata():
	lata_counter += 1
	actualizar_texto()

	if lata_counter == 4:
		print("¡Has recogido todas las latas! Ahora te llevamos a los créditos...")
		get_tree().change_scene_to_file("res://Creditos.tscn")

# Función para actualizar el texto en el Label3D
func actualizar_texto():
	text = "Latas: " + str(lata_counter)
