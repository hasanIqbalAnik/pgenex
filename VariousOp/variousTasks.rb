class VariousTasks
	require_relative('/home/anik/pgenex/Constraints/constraintManipulation')
	def findFileWithMissingConstraint(pathToFile)
		results = []
		open(pathToFile).each do |line|
			if line.include? '_id' 
				print line.match(/[0-9]/)
			end
		end
	end
	def orgClientCheckAdder(tableName)
		constMan = ConstraintManipulation.new 
		return constMan.add(tableName+'_org', tableName, 'ad_org', 'ad_org_id','ad_org_id'),constMan.add(tableName+'_client', tableName, 'ad_client', 'ad_client_id','ad_client_id'),constMan.addCheckConstraint(tableName)
	end
	def applicantIdAdder(tableName)
		constMan = ConstraintManipulation.new 
		return constMan.add(tableName+'_appl', tableName, 'thr_applicant', 'thr_applicant_id','thr_applicant_id')
	end
	def employeeInfoIdAdder(tableName)
		constMan = ConstraintManipulation.new 
		return constMan.add(tableName+'_empl', tableName, 'thr_empl_info', 'thr_empl_info_id','thr_empl_info_id')
	end
	def emplPayScaleIdAdder(tableName)
		
		constMan = ConstraintManipulation.new 
		return constMan.add(tableName+'_pscl', tableName, 'thr_empl_pay_scale', 'thr_empl_pay_scale_id','thr_empl_pay_scale_id')
	end

end