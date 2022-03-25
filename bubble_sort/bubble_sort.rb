def bubble_sort(list)
    loop do
        no_swaps = true
        for i in (0...list.length - 1) do
            if list[i] > list[i + 1]
                list[i], list[i + 1] = list[i + 1], list[i]
                no_swaps = false
            end
        end
        if no_swaps == true
            break
        end
    end
    list
end

print bubble_sort([4,3,78,2,0,2])