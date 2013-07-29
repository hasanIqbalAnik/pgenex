#given a folder, this would return the list of files
class ListFilesInFolder
	def getAllSqlFilesInFolder(folderName)
		records = Dir.glob(folderName + "/**/*/*.sql")
	end
end
