class TableManipulation
	def add
		"not implemented yet"
	end
	def drop(tableName)
		'drop table'+' '+tableName+'; '
	end

	def search(tableNamePartial)
		"SELECT tablename FROM pg_tables where tablename like"+" '%"+tableNamePartial+"%';"
	end

	def dumpFilesStartingWith(tablePrefix)
		puts "not implemented yet"
	end


end