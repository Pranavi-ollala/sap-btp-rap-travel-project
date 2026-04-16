@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOOKING VIEW'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_BOOKING_PO as select from zpo_booking
association to parent ZI_TRAVEL_PO as _travel on $projection.TravelId = _travel.TravelId
{
  key travel_id as TravelId ,
  key booking_id as BookingId, 
  flight_price  as Price,
  _travel  
   
}
