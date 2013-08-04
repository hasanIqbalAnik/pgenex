class Questions
	def addColumn
        	puts "enter table name"
                tableName = gets.chomp
                puts "enter column name"
                columnName = gets.chomp
                puts "enter data type"
                dataType = gets.chomp
                return tableName, columnName, dataType
	end

	def renameColumn
        	puts "enter table name"
                tableName = gets.chomp
                puts "enter old column name"
                oldColumnName = gets.chomp
                puts "enter new column name"
                newColumnName = gets.chomp
                return tableName, oldColumnName, newColumnName
	end
        def dropColumn
                puts "enter table name"
                tableName = gets.chomp
                puts "enter columnName"
                columnName = gets.chomp
                return tableName, columnName

        end

        def changeColumnDataType
                puts "enter table name"
                tableName = gets.chomp
                puts "enter column name"
                columnName = gets.chomp
                puts "enter new data type"
                dataType = gets.chomp
                return tableName, columnName, dataType
        end

        def addPrimaryKey
                puts "Enter table name"
                tableName = gets.chomp
                puts "enter primary key column name"
                columnName = gets.chomp
                return tableName, columnName
        end

        def addConstraint
                puts "enter constraintName"
                constraintName = gets.chomp
                puts "enter local table name"
                localTable = gets.chomp
                puts "enter foreign table name"
                foreignTable = gets.chomp
                puts "enter local column name"
                localColumn = gets.chomp
                puts "enter foreign column name"
                foreignColumn = gets.chomp
                return constraintName, localTable, foreignTable, localColumn, foreignColumn
        end

        def dropConstraint
                puts "enter table name"
                tableName = gets.chomp
                puts "enter constraint name "
                constraintName = gets.chomp
                return tableName, constraintName
        end

        def startingQuestions
                puts 'welcome to psql mangement'
                puts 'enter your choiche'
                puts '1. column'
                puts '2. constraint'
                puts '3. tables' 
                puts '4. generic sql'  
        end

        def columnMainQuestions
            puts "You want to?"
            puts 'enter your choiche'
            puts '1. add column'
            puts '2. rename'
            puts '3. drop'
            puts '4. change data type'
        end

        def constraintQuestions
            puts "You want to?"
            puts '1. add primary key'
            puts '2. add constraint'
            puts '3. drop constraint'
        end
end