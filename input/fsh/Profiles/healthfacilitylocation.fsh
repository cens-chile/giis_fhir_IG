Profile: HealthFacilityLocation
Parent: Location
Id: HealthFacilityLocation
Description: "Health facility from GIIS. Based on the 'Location' resource so it can be used as a reference for every immunization event."
* identifier 1..1 MS 
  * value 1..1 MS 
* name 1..1 MS

* type 1..1 MS
  * coding 0..1
* type.coding.code 1..1 MS 
* type from http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType
* type.coding.code = #HOSP
* type.coding.code ^short  = "Code MUST be: HOSP"

* managingOrganization 1..1 MS 
* managingOrganization only Reference(HealthFacility)