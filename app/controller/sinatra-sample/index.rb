module SinatraSample

class IndexController
  attr_reader :title, :content

  def main
    @title = "sinatra-sample"
    @content = "This is the sample page for sinatra."
  end
end

end
