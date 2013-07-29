class Main

require 'pg'
require_relative 'dbConnection'
require_relative 'columnManipulation'
require_relative 'constraintManipulation'
require_relative 'getTablesNColumns'
require_relative 'questions.rb'


begin
  db = DbConnection.new
  conn = db.connect('localhost','5432','mydb', 'tad', 'tad')

  puts "Connected to #{conn.db} at #{conn.host}"

  tabsNCols = GetTablesNColumns.new
  colMan = ColumnManipulation.new
  constMan = ConstraintManipulation.new
  questions = Questions.new

  questions.startingQuestions
  
  choiche  = gets.chomp

  case choiche
  when "1"
    questions.columnMainQuestions
    opChoice = gets.chomp
      case opChoice
      when "1"
        params = questions.addColumn
        puts colMan.add(params[0],params[1],params[2])
        conn.exec(colMan.add(params[0],params[1],params[2]))
        puts "operation successful"
      when "2"
        params  = questions.renameColumn
        puts colMan.rename(params[0],params[1],params[2])
        conn.exec(colMan.rename(params[0],params[1],params[2]))
        puts "operation successful"
      when "3"
        params = questions.dropColumn
        puts colMan.drop(params[0],params[1])
        conn.exec(colMan.drop(params[0],params[1]))
        puts "operation successful"
      when "4"
        params = questions.changeColumnDataType
        puts colMan.rename(params[0],params[1],params[2])
        conn.exec(colMan.rename(params[0],params[1],params[2]))
        puts "operation successful"
      end
  when "2"
    questions.constraintQuestions
    opChoice = gets.chomp
      case opChoice
      when "1"
        params = questions.addPrimaryKey
        puts constMan.addPrimaryKey(params[0], params[1])
        conn.exec(constMan.addPrimaryKey(params[0], params[1]))
        puts "operation successful"
      when "2"
        params = questions.addConstraint
        puts constMan.add(params[0],params[1],params[2], params[3]))
        conn.exec(constMan.add(params[0],params[1],params[2], params[3]))
        puts "operation successful"
      when "3"
        params = questions.dropConstraint
        puts constMan.drop(params[0], params[1])
        conn.exec(constMan.drop(params[0], params[1]))
        puts "operation successful"
      end
  when "3"
    puts "tables"
  end
  
  
rescue PGError=>e 
  puts "Shit man! Something is very wrong", e
ensure
  conn.close
  puts "connection closed"
end



end














# self.workFlow
  # result = conn.exec(tabsNCols.getTableNameLike('per'))
  # result.each do |table|
  #   puts table['tablename']
  # end

  # res1 = conn.exec(tabsNCols.getColumns('office'))
  # res1.each do |col|
  #   puts col['column_name']
  # end
