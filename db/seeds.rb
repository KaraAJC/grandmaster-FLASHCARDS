spanish = Deck.create(name: 'Spanish Colors')


spanish_colors = [{question: "negro", answer: "black"},
							 {question: "blanco", answer: "white"},
							 {question: "gris", answer: "gray"},
							 {question: "rojo", answer: "red"},
							 {question: "azul", answer: "blue"},
							 {question: "amarillo", answer: "yellow"},
							 {question: "verde", answer: "green"},
							 {question: "naranja", answer: "orange"},
							 {question: "morado", answer: "purple"},
							 {question: "rosa", answer: "pink"},
							 {question: "marrón", answer: "brown"},
							 {question: "plateado", answer: "silver"},
							 {question: "dorado", answer: "gold"}
]

spanish_colors.each do |card|
	Card.create(deck: spanish, question: card[:question], answer: card[:answer])
end

danger = Deck.create(name: 'Am I Endangered?')

endangered =[{question: "Black Rhino", answer: "yes"},
			 			 {question: "Canada Goose", answer: "no"},
			 			 {question: "Bengal Tiger", answer: "yes"},
			 			 {question: "Meerkat", answer: "no"},
			 			 {question: "Sea Lion", answer: "yes"},
			 			 {question: "Rock Pigeon", answer: "no"},
			 			 {question: "Chimpanzee", answer: "yes"},
			 			 {question: "Green Turtle", answer: "yes"},
			 			 {question: "Giraffe", answer: "no"},
			 			 {question: "Orangutan", answer: "yes"},
			 			 {question: "Blue Whale", answer: "yes"},
			 			 {question: "Platypus", answer: "no"}
]

endangered.each do |card|
	Card.create(deck: danger, question: card[:question], answer: card[:answer])
end
