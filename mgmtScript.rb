class Main

require 'pg'
require_relative 'dbConnection'
require_relative 'columnManipulation'
require_relative 'constraintManipulation'

begin
  db = DbConnection.new
  conn = db.connect('localhost','5432','mydb', 'tad', 'tad')

  puts "Connected to #{conn.db} at #{conn.host}"
  
rescue PGError=>e 
  puts "Shit man! Something is very wrong", e
ensure
  conn.close
  puts "connection closed"
end


end


