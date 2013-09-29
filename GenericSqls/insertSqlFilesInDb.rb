# class InsertSqlFilesInDb
# 	require 'pg'
# 	#require_relative 'DirectoryOp/listFilesInFolder'
# 	#require_relative 'DirectoryOp/getSqlFromFile'
# 	require_relative 'dbConnection'
# 	begin


# 	db = DbConnection.new
#   	conn = db.connect('localhost','5432','mydb', 'tad', 'tad')
#   	puts "Connected to #{conn.db} at #{conn.host}"

#   	puts "enter folder name"
#   	folder = gets.chomp
#   	files = ListFilesInFolder.new.getAllSqlFilesInFolder(folder)
#   	sqlGetter = GetSqlFromFile.new

#   	files.sort.each do |file|
#   		puts sqlGetter.getSqlAsStringFromFile(file)
#   		break
#   	end
		  
# 	rescue PGError=>e 
# 	  puts "Shit man! Something is very wrong", e
# 	ensure
# 	  conn.close
# 	  puts "connection closed"
# 	end
# end