def stock_picker(prices)
  best_profit = 0
  best_days = [0,1]
  
  prices.each_with_index do |buy_price, buy_day|
    (buy_day + 1...prices.length).each do |sell_day|
      sell_price = prices[sell_day]
      profit = sell_price - buy_price
      
      if profit > best_profit
        best_profit = profit
        best_days = [buy_day, sell_day]
      end
    end
  end

  best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10]) # => [1,4]
