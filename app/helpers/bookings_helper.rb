module BookingsHelper
    def bus_name(bus_id)
        Bus.find(bus_id).bus_name
    end
    def bus_no(bus_id)
        Bus.find(bus_id).bus_no
    end
    def from(bus_id)
        Bus.find(bus_id).from
    end
    def to(bus_id)
        Bus.find(bus_id).to
    end
    def time(bus_id)
        Bus.find(bus_id).time
    end
    def total_seat(bus_id)
        Bus.find(bus_id).total_seat
    end
    def seat_type(bus_id)
        Bus.find(bus_id).seat_type
    end
    def bus_id(bus_id)
        Bus.find(bus_id).bus_id
    end
end
