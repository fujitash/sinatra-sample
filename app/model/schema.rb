# sample application with DB
ActiveRecord::Base.establish_connection(
    "adapter" => "sqlite3",
    "database" => "db/bbs.db"
)

class Comments < ActiveRecord::Base
end

