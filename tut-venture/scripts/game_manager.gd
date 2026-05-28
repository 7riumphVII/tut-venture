extends Node

var score = 0

@onready var scoresum: Label = $ScoreSummary

func add_point():
	score += 1
	if score==1:
		scoresum.text="You collected 1 coin!"
	else:
		scoresum.text="You collected %s coins!" % str(score)
