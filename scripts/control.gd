extends Control

@onready var contador_moedas = $container/moedas_container/contador as Label

func _ready() -> void:
	contador_moedas.text = str("%04d" % Global.moeda)

func _process(delta: float) -> void:
	contador_moedas.text = str("%04d" % Global.moeda)
