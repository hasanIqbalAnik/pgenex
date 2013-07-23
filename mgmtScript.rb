require 'pg'
require_relative 'dbConnection'
require_relative 'columnManipulation'

class Main


test('openbravo', 'tad', 'tad')

end

def test(db, user, passwd)

begin
  db = DbConnection.new
  conn = db.connect(db, user, passwd)
  puts "Connected to #{conn.db} at #{conn.host}"
  sql = "select * from c_bpartner"
  result = conn.exec(sql)
  result.each do |row|
  	puts row['name']
  end

rescue PGError=>e 
  puts "Eeeeeeeek!", e
ensure
  conn.close unless conn.nil?
  puts "Connection closed" 
end
end