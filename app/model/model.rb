require 'active_record'
require_relative '../../db/migrate/20171225185321_create_comments'

ActiveRecord::Base.configurations = YAML.load_file('config/database.yml')
ActiveRecord::Base.establish_connection(:development)

class Comments < ActiveRecord::Base
end
