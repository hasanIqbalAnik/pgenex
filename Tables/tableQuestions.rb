class TableQuestions
        def tableMainQuestions
            puts "You want to?"
            puts "1. Add table"
            puts "2. Drop table"
            puts "3. Rename table"
            puts "4. Search table"
            puts "5. Dump sqls with table name from wildcard"
        end

        def addTable
            puts "not implemented"
        end
        def dropTable
            puts "Enter table name"
            tableName = gets.chomp
            return tableName
        end
        def searchTable
            puts "Enter partial table name"
            tableName = gets.chomp
            return tableName
        end
        def dumpFilesStartingWith
            puts "enter prefix for tables"
            tablePrefix = gets.chomp
            return tablePrefix
        end
end