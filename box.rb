# Problem statement
# A large box can hold five items, while the small box can hold only one item. All items must be placed in boxes and used boxes
# have to be filled up completely.
# Write a function that calculates the minimum no. of boxes needed to hold a given no. of items. If it is not possible to 
# meet the requirement, return -1.

# For example,  If you have 16 products, 2 large and 10 small boxes, the function should return 8(2 large boxes + 6 small boxes)
class Box
    def find_minimum_no_of_boxes(products, no_of_big_boxes, no_of_small_boxes)
        boxes_count = 0
        if products < 5
            if no_of_small_boxes >= products
                return products
            else
                return -1
            end
        else
            while(products >= 5 && no_of_big_boxes > 0) do
                no_of_big_boxes -=1
                products -= 5
                boxes_count += 1
            end
            if products > 0
                if no_of_small_boxes >= products
                    boxes_count += products
                else
                    return -1
                end
            end
        end
        return boxes_count
    end
end

puts Box.new.find_minimum_no_of_boxes(7, 1, 2)