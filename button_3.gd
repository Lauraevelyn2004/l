extends Button

# Caminho para a fase 3
const FASE_1_PATH = "res://levels/fase_03.tscn"

func _ready() -> void:
	# Conecta o sinal "pressed" ao método que troca de cena
	self.pressed.connect(_on_button_pressed)

func _on_button_pressed() -> void:
	# Troca para a fase 3
	var result = get_tree().change_scene_to_file(FASE_1_PATH)
	
	if result != OK:
		print("Erro ao carregar a fase 3:", FASE_1_PATH)
