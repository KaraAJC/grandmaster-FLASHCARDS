get '/decks' do
  @decks = Deck.all

  erb :"deck/all"
end

get '/decks/:deck_id/cards/:card_id' do
  puts params
  @card = Card.find(params[:card_id])
  @deck = Deck.find(params[:deck_id])
  erb :"card/show"
end


