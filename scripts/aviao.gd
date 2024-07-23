extends Node2D
const PRE_LAZER = preload("res://scenes/lazer.tscn")

var vel = 200 #variavel para controlar a velocidade pix p/ segundo

#posicao minima esquerda 18
#posicao maxima direita 145

func _ready():
	pass 


func _process(delta):	
	var dirx = 0
	var diry = 0
	
	#dirx esta somando com -1 e com 1 para quando as tecla esquerda e direita precionada o aviao nao se mexer.
	#direira e esquerda
	if Input.is_action_pressed("ui_left"):
		dirx += -1 
	if Input.is_action_pressed("ui_right"):
		dirx += 1
	
	#subir e descer
	if Input.is_action_pressed("ui_up"):
		diry += -1
	if Input.is_action_pressed("ui_down"):
		diry += 1
		
	if Input.is_action_just_pressed("ui_accept"):
		if get_tree().get_nodes_in_group("lazeres").size() < 3:
			var lazer = PRE_LAZER.instance()
			get_parent().add_child(lazer)
			lazer.global_position = $blaster.global_position
	
	translate(Vector2(dirx, diry) * vel * delta)
	
	#para aviao nao ultrapassar a boda da tela
	global_position.x = clamp(global_position.x, 18, 145)
	global_position.y = clamp(global_position.y, 22, 266)
	
