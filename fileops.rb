helpers do
	def getpeople
	  # get a listing of all the people
	  people = []
	  files = Dir.entries("people")
	  files.each do |f|	
		if f != "." && f != ".."
		  people.push(f.slice(0..f.index(".")-1))
		end
	  end
	  return people
	end

	def getperson(name)
	  # just get one person
	  # in production use filecontents = IO.read('people/#{name}.json')
	  filecontents = IO.read('/people/kevin.json')
	  person = JSON.parse(filecontents)
	  puts person
	  #output the list of favs in json
	end
end