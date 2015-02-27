Deck.create(name: 'Spanish Colors')


cards = [{question: thing1, answer: thing2}, ]

cards.each do |card|
	Card.new(deck_id: Deck.find_by(name: 'Spanish Colors').id, question: card[name], answer: card[answer])
end