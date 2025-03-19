module ApplicationHelper
    def formatted_date(date)
       date.strftime('%A, %b, %d, %Y') if date.present?
    end

    def formatted_time(time)
        time.strftime('%H:%M:%S')
    end
end
