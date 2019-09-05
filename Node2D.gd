extends Control

var story = "Ahrr..hay what your name. %s Nice to meet you too amm... may I have your sit side?. %s What are you doing?. %s"
var questions = []
var answers  = []
var question_number = 0


func _ready():
	#print (story % answers) 
	questions.append("Ahrr..hay what your name?.")
	questions.append("Nice to meet you may I have your sit side?.")	
	questions.append("What are you doing?.")	
	$DisplayText.text = questions[0]
	print (questions [0])
		

func _on_TextureButton_pressed():
	if question_number < len(questions)-1:
		answers.append ($PlayerInput.text)
		print(answers)
		#print(len(questions))
		$DisplayText.text = questions[question_number +1]
		question_number = question_number +1
		
	#if question_number == 1:
		#answers.append ($PlayerInput.text)
		#print(answers)
		#$PlayerInput.text = ""
		#$DisplayText.text = questions[2]
		
	elif question_number == len(questions)-1:
		answers.append ($PlayerInput.text)
		print(answers)
		$DisplayText.text = story % answers
	$PlayerInput.text = ""