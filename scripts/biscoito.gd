extends Node2D
var escolido = 0

func _ready():
	randomize() #para banguncar a randomizacao
	#for para verificar os biscoitos e deixa-los invisiveis
	for a in $biscoitos.get_children():
		a.visible = false
	
	#codigo para escolher o biscoito aleatoriamente
	escolido = (randi() % $biscoitos.get_child_count()) + 1
	
	#comando que pega o valor aleatorio e concatena com o nome para sair o biscoito na tela
	var node = get_node("biscoitos/biscoito" + str(escolido))
	node.visible = true
	
	#$area/shape.shape.radius = node.texture.get_width() / 2

func _process(delta):
	pass


func biscoitobatido(area):
	queue_free()
