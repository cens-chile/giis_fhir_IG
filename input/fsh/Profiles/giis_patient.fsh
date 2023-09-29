Profile: GIISPatient
Parent: Patient
Id: GIISPatient
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

* extension contains IdNumber named PIN 0..1 
* extension[PIN] ^short = "Extension made for handling PIN, if the country uses it." 

* extension contains VillageHandler named village 1..1 
* extension[village] ^short = "Extension made for making a patient able to reference a village"