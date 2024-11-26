extends StaticBody3D

func interact():
	print("¡Interacción con la lata!")
	
	# Llama al método del GameController para incrementar el contador
	GameController.incrementar_lata()

	# Elimina la lata de la escena
	queue_free()  # Elimina el nodo de la lata de la escena.
