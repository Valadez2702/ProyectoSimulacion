extends StaticBody3D  # Asumiendo que este es el nodo principal

func interact():
	print("¡Interacción con la lata!")
	# Elimina el nodo StaticBody3D y todos sus hijos (como el modelo)
	queue_free()  # Elimina este nodo y sus hijos
