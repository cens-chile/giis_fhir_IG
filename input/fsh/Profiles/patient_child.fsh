Profile: ChildPatient
Parent: Patient
Description: "Child patient from GIIS"
* identifier 1..1 MS
* name 1..1 MS
* name.family  and name.given MS
* birthDate 1..1 MS
* gender 1..1 MS
* address 0..1
* address.city MS
* managingOrganization only Reference(HealthFacility)
