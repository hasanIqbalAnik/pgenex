class ColumnManipulation

def add(tableName, columnName, columnDataType)
	'alter table'+ ' '+tableName+ ' '+'add column'+ ' '+columnName+' '+columnDataType+' '+' '+ ';'
end

def rename(tableName, oldColumnName, newColumnName)
	'alter table'+ ' '+tableName+ ' '+'rename column'+ ' '+oldColumnName+ ' '+'to'+ ' '+newColumnName+';'
end

def drop(tableName, columnName)
	'alter table'+ ' '+tableName+ ' '+'drop column'+ ' '+columnName+ ';'
end

def changeDataType(tableName,columnName, newDataType)
	'alter table' + ' '+tableName+ ' '+'alter column'+ ' '+columnName+ ' '+'type'+ ' '+newDataType+' '+'using'+' '+columnName+'::numeric'+';'
end

end