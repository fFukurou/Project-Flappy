extends Control


@onready var score_label: Label = $ScoreLabel



func _ready() -> void:
	SignalManager.on_score_updated.connect(on_score_updated)


func on_score_updated(score: int) -> void:
	score_label.text = str(score)
