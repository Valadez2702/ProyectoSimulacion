extends Area3D

@export var detection_radius : float = 10.0  # Radio de la esfera de detección

var objects_in_range = []

func _ready():
	# Crea una esfera de colisión con el radio deseado
	var sphere_shape = SphereShape3D.new()
	sphere_shape.radius = detection_radius
	
	var collision_shape = CollisionShape3D.new()
	collision_shape.shape = sphere_shape
	add_child(collision_shape)

	# Conectar las señales para detectar los objetos en el área
	connect("body_entered", self, "_on_body_entered")  # "self" hace referencia al nodo actual (Area3D)
	connect("body_exited", self, "_on_body_exited")    # Lo mismo para la señal "body_exited"

# Método cuando un objeto entra en el área
func _on_body_entered(body):
	print("Objeto dentro del área:", body)
	objects_in_range.append(body)

# Método cuando un objeto sale del área
func _on_body_exited(body):
	print("Objeto fuera del área:", body)
	objects_in_range.erase(body)
