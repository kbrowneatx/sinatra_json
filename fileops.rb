helpers do
	def getpeople
	  # get a listing of all the people
	  people = Hash.new
	  files = Dir.entries("people")
	  files.each do |f|	
		if f != "." && f != ".."
		  people[f.slice(0..f.index(".")-1)] = f
		end
	  end
	  return people
	end

	def getperson(name)
	  # just get one person
	  Dir.chdir("/people")
	  puts name
	  # filecontents = IO.read(name)
	  # person = JSON.parse(filecontents)
	  # return person
	end
end