require 'date'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/hotel'
require_relative '../lib/room'
require_relative '../lib/reservation'

describe "room" do 

  it "creates an instance of room" do 




  end 
  it "I access the list of reservations for a specified room" do
    res1 = HotelSystem::Reservation.new(1, Date.today, Date.new(2020,03,29))
    res2 = HotelSystem::Reservation.new(2, Date.new(2020, 03, 29), Date.new(2020, 04,02))
    res3 = HotelSystem::Reservation.new(3, Date.new(2020, 04, 06), Date.new(2020,04,18))
    
    room = HotelSystem::Room.new(5, 200)
    room.add_reservation(res1)
    room.add_reservation(res2)
    room.add_reservation(res3)

    res = room.reservations

    res.must_be_instance_of Array 

  end

end 