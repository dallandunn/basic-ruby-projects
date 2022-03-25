def stock_picker(stock_prices)
    max_profit = 0
    max_profit_buy_index = 0
    max_profit_sell_index = 0
    for index in (0...stock_prices.length) do
        buy_price = stock_prices[index]
        profits = stock_prices[index, stock_prices.length].map{|sell_price| sell_price - buy_price}
        current_max_profit = profits.max()
        if current_max_profit > max_profit 
            max_profit = current_max_profit
            max_profit_buy_index = index
            max_profit_sell_index = profits.find_index(current_max_profit)
        end
    end
    [max_profit_buy_index, max_profit_sell_index]
end

print stock_picker([17,3,6,9,15,8,6,1,10])