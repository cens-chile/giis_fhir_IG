Instance: ExampleGiispatient
Title: "Example GIIS Patient"
Description: "GIIS Patient example"
InstanceOf: GIISPatient
Usage: #example

//* extension[IdNumber].valueString = "abcd4589"
* extension[VillageHandler].url = "https://paho.org/fhir/giis/StructureDefinition/giis-village"
* extension[VillageHandler].valueReference = Reference(ExampleVillage)

* extension[BirthPlaceType].url = "https://paho.org/fhir/giis/StructureDefinition/giis-birthplace"
* extension[BirthPlaceType].valueString = "Hospital"

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