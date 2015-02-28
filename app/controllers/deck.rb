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
  session[:round_id] = @round.id
  redirect "/decks/#{@deck.id}/cards/#{@deck.cards.first.id}"
end


get '/decks/:deck_id/cards/:card_id' do
  puts params
  puts session[:round_id]
  @card = Card.find(params[:card_id])
  @deck = Deck.find(params[:deck_id])
  erb :"card/show"
end


get '/decks/:deck_id/cards/:card_id/guess' do
  @deck = Deck.find(params[:deck_id])
  @card = Card.find(params[:card_id])
  @guess = params[:guess]
  @choice = @card.check(@guess)
  @round = Round.find(session[round_id])

  erb :"card/answer"
end

# get '/decks/:deck_id/cards/:card_id/guess' do
#   puts "GET request is made "
#   puts params
#   puts session[:round_id]
  # @deck = Deck.find(params[:deck_id])
  # @card = Card.find(params[:card_id])
  # @guess = params[:guess]
  # @choice = @card.check(@guess)

  # erb :"card/answer"

