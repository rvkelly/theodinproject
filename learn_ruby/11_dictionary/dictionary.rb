class Dictionary 

	def initialize 
		@d = {}
	end
	
	def entries 
		@d
	end

	# def add(entry)
	# 	entry.is_a?(Hash) ? entry.each { |key, value| @d = { key => (value ? value : nil) } } : @d[entry] = nil
	# end

	def add(entry)
		entry.is_a?(Hash) ? entries.merge!(entry) : entries.merge!(entry => nil)
	end 

	def keywords
		@d.keys.sort
	end

	def include?(key)
		@d.has_key?(key)
	end

	def find(key)
		@d.select { |k| k =~ /(#{key})/ }
	end

	# def printable
	# 	entries.sort.each { |key, value| puts "[#{key}]" + " " + "\"#{value}\"" }
	# end

	def printable
		keywords.map { |key| "[#{key}]" + " " + "\"#{entries[key]}\""}.join("\n")
	end

	# def find(key)
	# 	results = {}
	# 	@d.each { |k,v| results.merge!(k => v) if ( k[0..key.length - 1] == key  ) }
 #    	results
 #    end


	# k =~ /\A((#{key})|(#{key})(?=\w))/

	# def find(key)
	# 	case key
	# 		when include?(key)
	# 			@d.select {|k| k == key }
	# 		when @d.keys.each { |k| k.match(/\A(#{key}){#{key.length}}/) }
	# 			@d.select {|k| k.match(/\A(#{key})/) }
	# 		else
	# 			{}
	# 	end
	# end

end