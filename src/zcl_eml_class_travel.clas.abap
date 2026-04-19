CLASS zcl_eml_class_travel DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  data: lv_value type char1 value 'D'.
  interfaces if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_eml_class_travel IMPLEMENTATION.
mETHOD if_oo_adt_classrun~main.
case lv_value.
when 'C'."Create
            MODIFY entities of ZI_TRAVEL_PO
            ENTITY TravelEML
            CREATE FIELDS ( TravelId Name TotalPrice Status )
            with value #( (
                        %CID = 'PRA'
                        TravelId = '9959'
                        Name = 'Mallaiah'
                        TotalPrice = '900'
                        Status = 'Booked'
                        )

             )
             MAPPED DATA(LT_MAP).
             out->write( lt_map ).

when 'U'.
            MODIFY ENTITIES OF ZI_TRAVEL_PO
            ENTITY TravelEML
            UPDATE FIELDS ( TravelId Name TotalPrice Status )
            WITH VALUE #( ( TravelId = '1234'
                            Name = 'Prasanna' ) )

            MAPPED DATA(LT_MAP1).
            out->write( lt_map1 ).



when 'D'.
            MODIFY ENTITIES OF ZI_TRAVEL_PO
            ENTITY TravelEML
            DELETE FROM VALUE #( ( TravelId = 'T002' ) )
            mapped data(lt_map2).
            out->write( lt_map2 ).



when 'R'.
            READ ENTITIES OF ZI_TRAVEL_PO
            ENTITY TravelEML
            FIELDS ( TravelId Name TotalPrice Status  )
            WITH VALUE #( ( TravelId = '1234' ) )

            RESULT DATA(LT_MAP3).
            out->write( lt_map3 ).
endcase.
endmETHOD.
ENDCLASS.
