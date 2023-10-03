Profile: Village
Parent: Location
Id: Village
Description: "Village where a health facility is part of"

* identifier 1..1
* name 1..1

* type 1..1 MS
* type.coding.code 1..1 MS 
* type from http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType
* type.coding.code ^short = "Code MUST be: HOSP"

* managingOrganization only Reference(HealthFacility)