enable :session

get '/' do
  @post =Post.all
  @users=User.all
  erb :index
end

