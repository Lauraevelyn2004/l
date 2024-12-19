extends Area2D

var fase_transicao := false  # Variável para controlar a transição de fase


func _process(delta: float) -> void:
	# Aqui você pode adicionar lógica de animações ou outros efeitos durante a transição, se necessário
	pass

# Este método será chamado quando o jogador entrar na área de transição
func _on_body_entered(body: Node2D) -> void:
	if body.name == "Jogador" and not fase_transicao:  # Verifica se o jogador entrou e não há transição em andamento
		fase_transicao = true  # Marca a transição como em andamento
		
		# Usamos uma função que chama a mudança de cena no próximo frame
		call_deferred("_mudar_fase")

# Método que muda a fase
func _mudar_fase():
	var cena_atual = get_tree().current_scene.name  # Obtém o nome da cena atual
	
	# Dependendo da cena atual, mudamos para a próxima fase
	if cena_atual == "Fase01":
		print("Mudando para Fase 02")  # Apenas para depuração
		get_tree().change_scene_to_file("res://levels/fase_02.tscn")  # Muda para Fase 02
	elif cena_atual == "Fase02":
		print("Mudando para Fase 03")  # Apenas para depuração
		get_tree().change_scene_to_file("res://levels/fase_03.tscn")  # Muda para Fase 03
	elif cena_atual == "Fase03":
		print("Mudando para Fase 01")  # Apenas para depuração
		get_tree().change_scene_to_file("res://levels/fase_01.tscn")  # Muda para Fase 01

# Este método é chamado quando a nova cena é carregada
func _on_scene_ready():
	fase_transicao = false  # Reseta a transição para permitir nova troca de fase
