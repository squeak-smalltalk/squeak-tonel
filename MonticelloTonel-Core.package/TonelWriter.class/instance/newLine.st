private
newLine
	 ^ Smalltalk os platformName caseOf:
		{['Win32'] -> [String crlf]}
		otherwise: [String lf]