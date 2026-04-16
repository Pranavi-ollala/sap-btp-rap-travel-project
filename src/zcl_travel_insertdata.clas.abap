CLASS zcl_travel_insertdata DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  interfaces if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_travel_insertdata IMPLEMENTATION.
method if_oo_adt_classrun~main.
data: lt_travel type table of zpo_travel,
      lt_booking type table of zpo_booking.
      DELETE FROM ZPO_TRAVEL.
      DELETE FROM ZPO_BOOKING.
lt_travel = value #(
( client = sy-mandt travel_id = 'T001' name = 'John' total_price = '1000' status = 'Booked' )
  ( client = sy-mandt travel_id = 'T002' name = 'Ravi' total_price = '50000' status = 'InProgress' )
).
insert zpo_travel from table @lt_travel.
lt_booking = value #(
 ( client = sy-mandt travel_id = 'T001' booking_id = 'B001' flight_price = '400' )
  ( client = sy-mandt travel_id = 'T001' booking_id = 'B002' flight_price = '600' )
  ( client = sy-mandt travel_id = 'T002' booking_id = 'B001' flight_price = '20000' )
).
insert zpo_booking from table @lt_booking.
out->write( 'Insert data successfull' ).
endmethod.
ENDCLASS.
