
require 'awesome_print'
module HotelSystem
  class Room
    
    attr_accessor :reservations,:room_number, :cost_per_night

    def initialize(room_number, cost_per_night, reservations=[])
      @room_number = room_number
      @cost_per_night = cost_per_night
      @reservations = reservations
    end 

    def add_reservation(reservation)
      @reservations << reservation
    end

    def list_reservations 
      ap @reservations
    end 
  
  end 

end 
