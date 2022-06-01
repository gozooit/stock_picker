def stock_picker(prices_array)
  recap = {
    :lowest_price => 0,
    :lowest_price_index => 0,
    :highest_price => 0,
    :highest_price_index => 0,
    :profit => 0,
    :highest_profit => 0,
    :indexes => [0, 0]
  }
  prices_array.each_with_index do |price, index|
    if recap[:lowest_price] == 0 || price < recap[:lowest_price]
      recap[:lowest_price] = price
      recap[:lowest_price_index] = index
      recap[:highest_price] = 0
      recap[:highest_price_index] = 0
    elsif recap[:highest_price] == 0 || price > recap[:highest_price]
      recap[:highest_price] = price
      recap[:highest_price_index] = index
    end
    recap[:profit] = recap[:highest_price] - recap[:lowest_price]
    if recap[:highest_profit] <= 0 || recap[:profit] > recap[:highest_profit]
      recap[:highest_profit] = recap[:profit]
      recap[:indexes] = [recap[:lowest_price_index], recap[:highest_price_index]]
    end
    # p price
    # p recap
  end
  p recap[:indexes]
end

stock_picker([17,3,6,9,15,8,6,1,10])
