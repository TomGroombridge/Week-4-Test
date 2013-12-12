class Array

  # Well done. The overall logic is there but it's incomplete:
  # the method should take an optional argument
	def inject_2
		memo = self.first
		self.each_with_index do |value, index| #calls a block with 2 arguements, the item and the index
		return memo if index+1 == self.count 
		memo = yield memo,self[index+1] #memo is equal to yield which is the self.first +1
		end
	end

end		