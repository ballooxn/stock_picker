

def stock_picker(array)

    bestbuy = 0
    bestsell = 0
    max_profit = 0

    array.each_with_index do |buy_price, buy_day|
        (buy_day + 1...array.length).each do |sell_day|
            sell_price = array[sell_day]
            profit = sell_price - buy_price

            if profit > max_profit
                max_profit = profit
                bestbuy = buy_day
                bestsell = sell_day
            end
        end
    end

    [bestbuy, bestsell]

end


p stock_picker([17,3,6,9,15,8,6,1,10])