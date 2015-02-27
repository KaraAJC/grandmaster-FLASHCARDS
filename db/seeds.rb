Deck.create(name: 'Spanish Colors')


span_colors = [{question: negro, answer: black}, 
							 {question: blanco, answer: white},
							 {question: gris, answer: gray},
							 {question: rojo, answer: red},
							 {question: azul, answer: blue},
							 {question: amarillo, answer: yellow},
							 {question: verde, answer: green},
							 {question: naranja, answer: orange},
							 {question: morado, answer: purple},
							 {question: rosa, answer: pink},
							 {question: marrón, answer: brown},
							 {question: plateado, answer: silver},
							 {question: dorado, answer: gold}
]

span_colors.each do |card|
	Card.new(deck_id: Deck.find_by(name: 'Spanish Colors').id, question: card[name], answer: card[answer])
end