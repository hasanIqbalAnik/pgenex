class Checker

#Search through a folder containing sql files and check that all those tables exist in databse
def fileList(folderPath)
  Dir.foreach('/path/to/dir') do |item|
  next if item == '.' or item == '..'
  puts "hello world"
end
end

def tableNames(fileList)
end

def checkExistence(tableNames)
end

end