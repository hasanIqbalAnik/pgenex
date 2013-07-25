class Main

require 'pg'
require_relative 'dbConnection'
require_relative 'columnManipulation'
require_relative 'constraintManipulation'
require_relative 'getTablesNColumns'

begin
  db = DbConnection.new
  conn = db.connect('localhost','5432','mydb', 'tad', 'tad')

  puts "Connected to #{conn.db} at #{conn.host}"

  tabsNCols = GetTablesNColumns.new
  result = conn.exec(tabsNCols.getTables)
  result.each do |table|
    puts table['tablename']
  end

  res1 = conn.exec(tabsNCols.getColumns('office'))
  res1.each do |col|
    puts col['column_name']
  end

  
rescue PGError=>e 
  puts "Shit man! Something is very wrong", e
ensure
  conn.close
  puts "connection closed"
end

def getTableName
end

def getColumns(tableName)
end

end


