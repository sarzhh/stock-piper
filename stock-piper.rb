def array
  arrray = []
  puts 'Enter the array'
  input = gets.chomp
  array = input.split.map(&:to_i) 
end
 stock = array
 puts stock.inspect

def stock_picker(stock)
  sellingprice_and_buyingprice = []
  sellingpriceindex_and_buyingpriceindex = []
  min_index = 0
  buying_price_index = 0
  new_price = 0
  new_price_index = 0
  buying_price = 0
  selling_price = 0
  selling_price_index = 0
  
  stock.each_with_index do |price, index|
    if price < stock[min_index]
      new_price = price
      new_price_index = index

      if new_price < stock[index + 1]
        buying_price = new_price
        buying_price_index = new_price_index
        break
      end 
    end 
  end

  stock[buying_price_index..-1].each_with_index do |price, index|
    if price > stock[buying_price_index]
      new_price = price
      new_price_index = index + buying_price_index
      
      if new_price > stock[index + buying_price_index + 1]
        selling_price = new_price
        selling_price_index = new_price_index
        break
      end
    end

  end

  sellingprice_and_buyingprice.push(buying_price, selling_price)
  sellingpriceindex_and_buyingpriceindex.push(buying_price_index, selling_price_index)
  [sellingprice_and_buyingprice, sellingpriceindex_and_buyingpriceindex]
  
end
puts stock_picker(stock).inspect
