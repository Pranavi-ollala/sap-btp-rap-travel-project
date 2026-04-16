@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'TRAVEL ROOT VIEW'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_TRAVEL_PO as select from zpo_travel
composition [0..*] of ZI_BOOKING_PO as _BOOKING 
{ 
    key travel_id as TravelId,
    name as Name,
    total_price as TotalPrice,
    status  as Status,
    case
    when status = 'Booked' then 3
    when status = 'InProgress' then 2
    else 3
    end as Status_Check,
     
    _BOOKING
}
