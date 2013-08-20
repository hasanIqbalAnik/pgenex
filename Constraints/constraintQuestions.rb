class ConstraintQuestions
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

        def constraintMainQuestions
            puts "You want to?"
            puts '1. add primary key'
            puts '2. add constraint'
            puts '3. drop constraint'
        end

end