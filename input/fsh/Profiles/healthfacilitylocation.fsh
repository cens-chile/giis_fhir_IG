Profile: HealthFacilityLocation
Parent: Location
Description: "Health facility from GIIS. Based on the 'Location' resource so it can be used as a reference for every immunization event."
* identifier 1..1 MS 
* name 1..1 MS
* type 1..1 MS
* type.coding.code ^short = "Code MUST be = HOSP"
* managingOrganization only Reference(HealthFacility)