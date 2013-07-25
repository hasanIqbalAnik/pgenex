class ConstraintManipulation


def addPrimaryKey(tableName, columnName)
    'alter table'+' '+tableName+' '+'add constraint'+' '+tableName+'_key'+' '+'primary key'+' '+'('+columnName+')'+';'
end

def add(localTable, foreignTable, localColumn, foreignColumn)
      'alter table'+' '+localTable+' '+'add constraint'+' '+localTable+'_'+foreignTable+'_rel'+' '+
      'foreign key'+' '+'('+localColumn+')'+' '+
      'references'+' '+foreignTable+'('+foreignColumn+')'+' '+
      'match simple'+' '+'on update no action on delete no action'+';'
end


def drop(tableName, constraintName)
	'alter table'+' '+tableName+' '+'drop constraint'+' '+constraintName+';'
end

end