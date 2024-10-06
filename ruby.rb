def stock_picker(arr)
    # Find what the best difference between buying and selling is (sell - buy)
    # Start looking for sell day that is later than the buy day

    highest_profit = 0
    best_days = []

    arr.each_with_index do |buy_value, buy_index|
        next_day = buy_index + 1
        arr[next_day..-1].each_with_index do |sell_value, sell_index|
            if sell_value - buy_value > highest_profit
                highest_profit = sell_value - buy_value
                # We must add buy_index + 1 because current array we're looping through has the buy_index + 1 cut off.
                best_days = [buy_index, sell_index + buy_index + 1]
            end
        end
    end
    best_days
end

p stock_picker([1,3,6,9,15,8,6,1,30])