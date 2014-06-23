# Homepage (Root path)
get '/' do
  erb :index
end

get '/songs' do
  @songs = Song.all
  erb :'songs/index'
end

get '/songs/new' do
	erb :'songs/new'
end

get '/songs/:id' do
  @song = Song.find params[:id]
  erb :'songs/show'
end

post '/songs' do
  @song = Song.new(
    title: params[:title],
    author:  params[:author],
    url: params[:url]
  )
  if @song.save
    redirect '/songs'
  else
    erb :'songs/new'
  end
end

get '/users/signup' do
	erb :'users/signup'
end

get '/users/login' do
	erb :'users/login'
end

get '/users/:id' do
	@user = User.find params[:id]
	erb :'users/user_profile'
end

post '/users' do
	@user = User.new(
		username: params[:username],
		email: params[:email],
		password: params[:password]
	)
	if @user.save
		redirect '/users/login'
	else
		erb :'users/signup'
	end
end

post '/users/login' do
	@user = User.where(
		email: params[:email],
		password: params[:password]
	)
	if @user.exists
		redirect '/songs'
	else
		erb :'users/login'
	end
end

