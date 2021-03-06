

require_relative 'test_helper'



describe "room" do 

  it "creates an instance of room" do 
    room = HotelSystem::Room.new(7, 100)
    room.must_be_instance_of HotelSystem::Room 
    room.room_number.must_be_instance_of Integer
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

describe "class methods" do 

  

  it "lists reservations" do 
    
      res1 = HotelSystem::Reservation.new(1, Date.today, Date.new(2020,03,29))
      res2 = HotelSystem::Reservation.new(2, Date.new(2020, 03, 29), Date.new(2020, 04,02))
      res3 = HotelSystem::Reservation.new(3, Date.new(2020, 04, 06), Date.new(2020,04,18))
      
      room = HotelSystem::Room.new(5, 200)
      room.add_reservation(res1)
      room.add_reservation(res2)
      room.add_reservation(res3)

      room.list_reservations.must_be_instance_of Array 

      
  end 


end 