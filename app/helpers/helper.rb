helpers do

  def find_username_from_post(post_id)
    User.find(Post.find(post_id).user_id).username
  end

  def find_username_from_comment(comment_id)
     User.find(Comment.find(comment_id).user_id).username   
  end

  def get_all_comments(post_id)
    @comments = Comment.all.find(post_id)
    # @comments.each do |comment|
    #   if comment.post_id == post_id
    #     comment
    #   end
    # end
  end

  def get_posts(user_id)
    @user_posts = Post.all.find(user_id)
   #  @posts = Post.all
   #  @posts.each do |post|
   #    if post.user_id == user_id
   #      post
   #    end
   # @post = Post.find(@user.id)
  end

  def get_comments(user_id)
    @user_comments = Comment.all.find(@user_id)
  end

end
