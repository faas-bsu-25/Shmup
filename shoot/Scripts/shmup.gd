extends Node2D
@export var txtscore:Label;
var score =5; 

func _ready() -> void:
	txtscore.text=str(score);
func increment_score():
	score=score+1;
	txtscore.text=str(score);
	$SFXExplosion.play();
	
	
