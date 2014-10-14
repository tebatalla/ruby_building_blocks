def stock_picker(prices)
	max_profit = 0
	start_end =[]
	prices.each_with_index do |buy,index|
		prices_after_current_day = prices[index..-1]
		prices_after_current_day.each do |sell|
			if (sell - buy) > max_profit
				max_profit = sell - buy
				start_end[0],start_end[1] = buy, sell
			end
		end
	end
	return start_end
end