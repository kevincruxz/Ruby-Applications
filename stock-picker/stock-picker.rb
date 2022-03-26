def stock_picker(stocks)
    greatest_revenue = 0
    days_to_commerce = []
    for i in (0..stocks.length - 2) do
        for j in (i + 1..stocks.length - 1) do
            if stocks[j] - stocks[i] > greatest_revenue
                greatest_revenue = stocks[j] - stocks[i]
                days_to_commerce = [i, j]
            end
        end
    end
    days_to_commerce #Returns the best day to buy, and the best day to sell, in order to get the greatest revenue
end

print "Write the stocks separeted by a space: "
stocks = gets.chomp.split #Splits the input into an array

p stock_picker(stocks.map { |int| int.to_i }) #Map method returns the same array converted to integers