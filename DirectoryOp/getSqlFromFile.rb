#given a file name, this would return the containing sql as string
class GetSqlFromFile
	def getSqlAsStringFromFile(filename)
		File.open(filename, "rb").read
	end
end