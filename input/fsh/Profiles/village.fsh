Profile: Village
Parent: Location
Id: Village
Description: "Village where a health facility is part of"
* identifier 1..1
* name 1..1
* type 1..1 MS
* type.coding.code ^short = "Code MUST be = COMM"
* managingOrganization only Reference(HealthFacility)