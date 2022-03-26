def bubble_sort(to_sort)
    changed = false
    should_restart = true
    while should_restart == true
        changed = false
        i = 0
        while i <= to_sort.length - 2
            if to_sort[i] > to_sort[i + 1]
                holder = to_sort[i + 1]
                to_sort[i + 1] = to_sort[i]
                to_sort[i] = holder
                changed = true
            end
            if i == to_sort.length - 2
                if changed == false
                    should_restart = false
                end 
            end
            i += 1 
        end 
    end
    to_sort
end

print "Introduce a list of numbers to sort, each separated by a space: "
to_sort = gets.chomp.split

p bubble_sort(to_sort.map { |char| char.to_i })