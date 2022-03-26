def stock_picker(stocks)
    greatest_revenue = 0
    for i in (0..stocks.length - 2) do
        for j in (i + 1..stocks.length - 1) do
            if stocks[j] - stocks[i] > greatest_revenue
                greatest_revenue = stocks[j] - stocks[i]
            end
        end
    end
    greatest_revenue
end

print "Write the stocks separeted by a space: "
stocks = gets.chomp.split

puts stock_picker(stocks.map { |int| int.to_i })