
require 'bundler'
Bundler.require
require_all 'lib'
# require_relative '../lib/car'
# require_relative '../lib/icu'
# require_relative '../lib/nurse'
# require_relative '../lib/patient'

require 'Pry'
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/development.sqlite"
)
