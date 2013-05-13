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
	  filetoopen = "#{Dir.pwd}/people/#{name}"
	  filecontents = IO.read(filetoopen)
	  p = JSON.parse(filecontents)
	  q = Hash.new
	  q = p.delete("favorites")
	  p = p.merge(q)
	  return p
	end
end