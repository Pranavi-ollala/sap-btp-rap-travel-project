@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PROJECTION VIEW FOR TRAVEL PROJECT'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZI_TRAVEL_PROJ as projection on ZI_TRAVEL_PO
{
  @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_TRAVEL_PO', element: 'TravelId' }  }]
    key TravelId,
    Name,
    TotalPrice,
    Status,
   Status_Check,
    /* Associations */
    _BOOKING

}
