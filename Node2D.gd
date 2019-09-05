extends Control

#var story = "Ahrr..hay what your name. %s Nice to meet you too amm... may I have your sit side?. %s"
#var answers = ["Aow hay my name teung nice to meet you.","Yeah sure.",]
var questions = []
var answers 

func _ready():
	#print (story % answers) 
	questions.append("Ahrr..hay what your name?.")
	questions.append("Nice to meet you may I have your sit side?.")	
	$DisplayText.text = questions[0]
	print (questions [0])
		

func _on_TextureButton_pressed():
	answers = $PlayerInput.text
	print(answers)
	#print(len(questions))
	print(questions[1])
	$DisplayText.text = questions[1]
