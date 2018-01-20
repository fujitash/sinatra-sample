require_relative '../../model/model'

module SinatraSample

class NewController

  def main(params)
    Comments.create({:body => params[:body]})
  end

end

end
