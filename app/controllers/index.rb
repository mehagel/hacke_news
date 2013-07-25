enable :session

get '/' do
  @post =Post.all
  @users=User.all
  erb :index
end

get '/posts/:post_id' do
  @post = Post.find(params[:post_id])
  erb :post
end

get '/users/:user_id' do
  @user = User.find(params[:user_id])
  erb :profile
end
