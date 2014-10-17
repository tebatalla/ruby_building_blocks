module Enumerable
		
	def my_each
		i = 0
		while i < self.size
			yield(self[i])
			i += 1
		end
	end
	
	def my_each_with_index
		i = 0
		while i < self.size
			yield(self[i], i)
			i += 1
		end
	end

	def my_select
		select_result = []
		self.my_each do |i|
			if yield(i)
				select_result << i
			end
		end
		return select_result
	end

end