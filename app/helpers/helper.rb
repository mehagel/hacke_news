helpers do

  def find_username(post_id)
    User.find(Post.find(post_id).user_id).username
  end

end
