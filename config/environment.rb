require 'bundler/setup'
require 'colorize'
Bundler.require
require_all 'app'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "db/development.sqlite3"
)

ActiveRecord::Base.logger = Logger.new(STDOUT)
