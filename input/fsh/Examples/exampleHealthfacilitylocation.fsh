Instance: ExampleHealthfacilityLocation
Title: "Example Health facility location"
Description: "Example of a Health facility location, the code is to diferentiate this location as an hospital(HOSP) from a village (COMM)"
InstanceOf: HealthFacilityLocation
Usage: #example

* identifier.value = "04"

* name = "Saint's George"

* type.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#HOSP

* managingOrganization = Reference(ExampleHealthfacility)
