require_relative 'route/hello'
require_relative 'route/sinatra-sample'

class SampleApp < Sinatra::Base

  configure do
    set :app_file, __FILE__
  end

end
