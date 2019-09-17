require 'sinatra/activerecord'
require 'require_all' # Remember to require requiring.

require_all 'app'

ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3', # Remember the comma!
    database: 'db/database.db'
)