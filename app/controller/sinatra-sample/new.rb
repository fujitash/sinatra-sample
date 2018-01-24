require_relative '../../model/comments'

module SinatraSample

class NewController

  def main(params)
    Comments.create(comment:  params[:comment])
  end

end

end
