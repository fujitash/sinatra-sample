module SinatraSample

class AboutController
  attr_reader :title, :content, :email

  def main
    @title = "sinatra-sample-about"
    @content = "This is the sample 'about' page for sinatra."
    @email = 'mail@gmail.com'
  end
end

end
