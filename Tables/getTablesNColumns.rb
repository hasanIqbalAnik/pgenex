class GetTablesNColumns

def getTables()
	"SELECT * FROM pg_catalog.pg_tables where schemaname = 'public'" 
end

def getColumns(tableName)
	"select column_name from information_schema.columns where
	table_name='"+tableName+"';"
end

def getTableNameLike(nameLike)
	"SELECT * FROM pg_catalog.pg_tables where tablename LIKE '"+ nameLike+"%' AND schemaname = 'public'" 
end

end