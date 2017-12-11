class UsersController < ApplicationController

get '/signup' do

  erb :'/users/create_user'
end

post '/signup' do
  if params[:username] == "" || params[:email] == "" || params[:password] == ""
    redirect to '/signup'
  else
    @user = User.new(username: params[:username], email: params[:email], password: params[:password])
    @user.save
    session[:id] = @user.id
    redirect "/tweets"
  end
end

end
