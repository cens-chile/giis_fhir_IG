Profile: GIISPatient
Parent: Patient
Description: "A patient from GIIS, this one can be either a child or an adult."
* identifier 1..1 MS
* name 1..1 MS
* name.family  and name.given MS
* birthDate 1..1 MS
* gender 1..1 MS
* telecom 0..1
* telecom.system and telecom.value MS
* address 0..1
* address.city 0..1 MS 
* managingOrganization only Reference(HealthFacility) 