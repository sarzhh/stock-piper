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
  min_index = 0
  new_price = 0
  buying_price = 0

  stock.each_with_index do |price, index|
    if price < stock[min_index]
      new_price = price
      
      if new_price < stock[index + 1]
        buying_price = new_price
        break
      end 
    end 
   
  end
  sellingprice_and_buyingprice.push(buying_price)
  sellingprice_and_buyingprice
  
end
puts stock_picker(stock).inspect
