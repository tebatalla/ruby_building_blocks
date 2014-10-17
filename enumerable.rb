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

	def my_all?
		self.my_each do |i|
			if !yield(i)
				return false
			end
		end
		return true
	end

	def my_any?
		self.my_each do |i|
			if yield(i)
				return true
			end
		end
		return false
	end

	def my_none?
		self.my_each do |i|
			if yield(i)
				return false
			end
		end
		return true
	end

	def my_count
		count = 0
		self.my_each do |i|
			if yield(i)
				count += 1
			end
		end
		return count
	end

	def my_map(&proc1)
		result = []
		self.my_each do |i|
			result << proc1.call(i)
		end
		return result
	end

	def my_inject
		result = self[0]
		self.my_each_with_index do |i,index|
			result = index == 0 ? self[0] : yield(result,i)
		end
		return result
	end

end


def multiply_els(arr)
	arr.my_inject { |x, y| x * y}
end