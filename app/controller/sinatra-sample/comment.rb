module SinatraSample

class CommentController
  attr_reader :title, :comments

  def main
    @title = "sinatra-sample-comment"
    @comments = Comments.order("id desc").all
  end
end

end
