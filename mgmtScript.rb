class Main

require 'pg'
require_relative 'dbConnection'
require_relative 'Columns/columnManipulation'
require_relative 'Columns/columnQuestions'

require_relative 'Constraints/constraintManipulation'
require_relative 'Constraints/constraintQuestions'
require_relative 'questions.rb'

require_relative 'Tables/tableManipulation'
require_relative 'Tables/tableQuestions'
require_relative 'DirectoryOp/getSqlFromFile'
require_relative 'DirectoryOp/listFilesInFolder'
require_relative 'GenericSqls/insertSqlFilesInDb'

require_relative 'VariousOp/taskQuestions'
require_relative 'VariousOp/variousTasks'

begin
  db = DbConnection.new
  conn = db.connect('localhost','9218','lbgerp2', 'tad', 'tad')

  puts "Connected to #{conn.db} at #{conn.host}"

  #tabsNCols = GetTablesNColumns.new
  colMan = ColumnManipulation.new
  constMan = ConstraintManipulation.new
  tabMan = TableManipulation.new
  taskMan = VariousTasks.new
  questions = Questions.new

  columnQuestions = ColumnQuestions.new
  constraintQuestions = ConstraintQuestions.new
  tableQuestions = TableQuestions.new
  taskQuestions = TaskQuestions.new

  questions.startingQuestions
  
  choiche  = gets.chomp

  case choiche
  when "1"
    columnQuestions.columnMainQuestions
    opChoice = gets.chomp
      case opChoice
      when "1"
        params = columnQuestions.addColumn
        puts colMan.add(params[0],params[1],params[2])
        conn.exec(colMan.add(params[0],params[1],params[2]))
        puts "operation successful"
      when "2"
        params  = columnQuestions.renameColumn
        puts colMan.rename(params[0],params[1],params[2])
        conn.exec(colMan.rename(params[0],params[1],params[2]))
        puts "operation successful"
      when "3"
        params = columnQuestions.dropColumn
        puts colMan.drop(params[0],params[1])
        conn.exec(colMan.drop(params[0],params[1]))
        puts "operation successful"
      when "4"
        params = columnQuestions.changeColumnDataType
        puts colMan.changeDataType(params[0],params[1],params[2])
        conn.exec(colMan.changeDataType(params[0],params[1],params[2]))
        puts "operation successful"
      end
  when "2"
    constraintQuestions.constraintMainQuestions
    opChoice = gets.chomp
      case opChoice
      when "1"
        params = constraintQuestions.addPrimaryKey
        puts constMan.addPrimaryKey(params[0], params[1])
        conn.exec(constMan.addPrimaryKey(params[0], params[1]))
        puts "operation successful"
      when "2"
                  i=1
          until i > 10
         params = constraintQuestions.addConstraint
         puts constMan.add(params[0],params[1],params[2], params[3], params[4])
         conn.exec(constMan.add(params[0],params[1],params[2], params[3], params[4]))
         puts "operation successful"
            i+=1
            redo if i > 10
          end
         
      when "3"
        params = constraintQuestions.dropConstraint
        puts constMan.drop(params[0], params[1])
        conn.exec(constMan.drop(params[0], params[1]))
        puts "operation successful"
      end
  when "3"
        tableQuestions.tableMainQuestions
        opChoice = gets.chomp
        case opChoice
        when "1" #add table
          puts "not implemented yet"
       when "2" #drop table
          params = tableQuestions.dropTable
          puts tabMan.drop(params)
          conn.exec(tabMan.drop(params))
          puts "operation successful"
       when "3" #search table 
          params = tableQuestions.searchTable
          puts tabMan.search(params)
          #conn.exec(tabMan.search(params[0]))
          puts "operation successful"
        when "4" #rename table
          params = tableQuestions.renameTable
          puts tabMan.rename
        when "5"
          params = tableQuestions.dumpFilesStartingWith
          puts tabMan.dumpFilesStartingWith(params)
          puts "operation successful"
        end
  when "4"
        puts "enter generic sql"
        sql = gets.chomp
        conn.exec(sql)
        puts "operation successful"
  when "5"
        taskQuestions.taskMainQuestions
        opChoice = gets.chomp
        case opChoice
          when "1"
          params = taskQuestions.findTableWithMissingConstraint
          puts taskMan.findFileWithMissingConstraint(params)          
          puts "operation successful"
          when "2"
            open('/home/anik/tables.txt').each do |line|
             # params = taskMan.orgClientCheckAdder(line.delete("\n"))
             # puts params[0]
             # puts params[1]
             # puts params[2]
             # conn.exec(params[0])
             # conn.exec(params[1])
             # conn.exec(params[2])  
             # params = taskMan.applicantIdAdder(line.delete("\n"))
             # puts params
             # conn.exec(params)

             # params = taskMan.employeeInfoIdAdder(line.delete("\n"))
             # conn.exec(params)
             # puts params

             params = taskMan.emplPayScaleIdAdder(line.delete("\n"))
             puts params
             conn.exec(params)
            end
            
            puts "complete!"
        end

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
