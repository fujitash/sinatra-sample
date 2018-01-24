require_relative '../../model/comments'

module SinatraSample

class CommentController
  attr_reader :title, :comments

  def main
    @title = "sinatra-sample-comment"
    @comments = Comments.all()
  end
end

end
