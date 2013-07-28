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

        def startingQuestions
                puts 'welcome to psql mangement'
                puts 'enter your choiche'
                puts '1. column'
                puts '2. constraint'
                puts '3. tables'   
        end

        def columnMainQuestions
            puts "You want to?"
            puts 'enter your choiche'
            puts '1. add column'
            puts '2. rename'
            puts '3. drop'
            puts '4. change data type'
        end

end