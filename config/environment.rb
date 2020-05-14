<<<<<<< HEAD

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
=======
require 'pry'
require 'require_all'
require_all 'lib'
>>>>>>> 8214ccd8048cc79e2749d243d2fcc7e227aea0bc
