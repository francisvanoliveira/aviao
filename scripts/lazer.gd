extends Node2D
var vel = 200

func _ready():
	pass



func _process(delta):
	translate(Vector2(0, -1) * vel * delta)


func tiroforadatela():
	#funcao para excluir todo os elementos do tiro que sair da tela para não haver consumo desnecessário do godot
	queue_free()


func lazerbater(area):
	queue_free()

