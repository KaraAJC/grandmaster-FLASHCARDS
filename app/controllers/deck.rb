get '/decks' do
  puts params
  session.each do |k,v|
    puts "key is #{k}, value is #{v}"
  end
  @decks = Deck.all

  erb :"deck/all"
end

get '/decks/:deck_id' do
  puts params
  @deck = Deck.find(params[:deck_id])
  @user = User.find(session[:user_id])
  @round = Round.create( deck_id: @deck.id, player_id: @user.id )
  redirect "/decks/#{@deck.id}/cards/#{@deck.cards.first.id}"
end

get '/decks/:deck_id/cards/:card_id' do
  puts params
  @card = Card.find(params[:card_id])
  @deck = Deck.find(params[:deck_id])
  erb :"card/show"
end

# post 'decks/:deck_id/cards/:card_id' do
#   @

#   erb: "card/answer"
# end
