require 'pry'
require 'sqlite3'
require_relative '../lib/arrayliens'

DB = {:conn => SQLite3::Database.new("db/database.db")}

binding.pry