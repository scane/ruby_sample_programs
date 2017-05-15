class AddSubtractTime
    def change_time(start_time, delta_minutes)
        arr = start_time.split(':')
        hours = arr[0].to_i
        minutes = arr[1].to_i
        add_hours = 0
        add_minutes = 0
        if delta_minutes < 60 && delta_minutes > -60 
            add_minutes = delta_minutes
        else
            add_hours = delta_minutes / 60
            add_minutes = delta_minutes - add_hours * 60
        end
        hours += add_hours
        minutes += add_minutes
        if(minutes > 60)
            hours_to_be_added = minutes / 60
            hours += hours_to_be_added
            minutes -= hours_to_be_added * 60
        end
        if hours > 24
            while(hours > 24) do
                hours = hours - 24
            end      
        elsif hours < 0
            while(hours < 0) do
                hours = hours + 24
            end
        end
        if(hours >= 12 && hours <= 23)
            am_pm = "PM"
        else
            am_pm = "AM"
        end
        end_time = "#{hours}:#{minutes} #{am_pm}"
        puts end_time
    end
end

AddSubtractTime.new.change_time('11:12AM',  - (60 * 24 * 2 + 2))