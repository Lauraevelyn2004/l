extends Node2D
@onready var camera = $camera as Camera2D
@onready var jogador = $Jogador as CharacterBody2D


const player = preload("res://personagens/jogador.tscn")
func _ready() -> void:
	var p1 = player.instantiate()
	add_child(p1)
	p1.position.x= 39
	p1.position.y= 193
	p1.seguir_camera(camera)


func _process(delta: float) -> void:
	pass

func reiniciar_fase():
	$reiniciar_jogo.start() 

func _on_reiniciar_jogo_timeout() -> void:
	get_tree().reload_current_scene()
# reinicia as moedas após a morte do jogador
	Global.moeda = 0
