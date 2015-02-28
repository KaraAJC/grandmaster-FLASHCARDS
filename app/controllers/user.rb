get '/' do
  erb :index
end


post '/login' do #find user, start session
  @user = User.find_by(username: params[:username], password: params[:password])
  session[:user_id] = @user.id
  redirect '/profile'
end

get '/signup' do #set user form
  erb :'users/new'
end

post '/signup' do # create user
  @user = User.create(username: params[:username], password: params[:password])

  if @user.valid?
    session[:user_id] = @user.id
    redirect '/profile'
  else
    @errors = @user.errors
    erb :'users/new'
  end
end

get '/profile' do #show user profile
  @user = User.find(session[:user_id])
  erb :'users/profile'
end

get '/logout' do
  session.clear
  redirect '/'
end
