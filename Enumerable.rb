module Enumerable
	def my_each
      	if block_given?
        	for i in self
            	yield(i)
        	end
      	end   

      return self.to_enum
   end
	
	def my_each_with_index
		if block_given?
			for i in self
				yield(index(i))
			end
		end
		return self.to_enum
	end
	
	def my_select
		result = []
		if block_given?
			for i in self
				if yield(i) == true
					result << i
				end
			end
			return result
		end
		return self.to_enum
	end
	
	def my_all?
		self.my_each do |i|
			if block_given?
				return false unless yield(i)
			else
				return false unless i
			end
		end
		true
	end
	
end
