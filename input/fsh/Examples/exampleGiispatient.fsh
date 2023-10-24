Instance: ExampleGiispatient
Title: "Example GIIS Patient"
Description: "GIIS Patient example"
InstanceOf: GIISPatient
Usage: #example

//* extension[IdNumber].valueString = "abcd4589"
* extension[VillageHandler].valueReference = Reference(ExampleVillage)

* identifier[SystemID].system = "http://www.giisidentifier.org/ID/SystemID"
* identifier[SystemID].value = "16399288"

* name.given = "George"
* name.family = "Denver"

* telecom.system = #phone
* telecom.value = "12490834"
* telecom.use = #mobile

* gender = #male

* birthDate = "1996-12-13"
* managingOrganization = Reference(ExampleHealthfacility)