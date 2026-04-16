@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for booking'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZI_BOOKING_PROJ as projection on ZI_BOOKING_PO
{
    key TravelId,
    key BookingId,
    Price,
    /* Associations */
    _travel
}
