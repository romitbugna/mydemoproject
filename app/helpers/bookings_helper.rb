module BookingsHelper
    def find_cost_of_ticket(booking)
        cost = ""
        if booking.seat_type == "Lower Class"
            booking.update(cost_of_ticket: 300)
            cost = 300
        elsif booking.seat_type ==  "Middle Class"
            booking.update(cost_of_ticket: 500)
            cost = 500
        else
            booking.update(cost_of_ticket: 1000)
            cost = 1000
        end
        cost
    end
end
