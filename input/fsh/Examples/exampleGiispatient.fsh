Instance: ExampleGiispatient
Title: "Example GIIS Patient"
Description: "GIIS Patient example"
InstanceOf: GIISPatient
Usage: #example

//* extension[IdNumber].valueString = "abcd4589"
* extension[VillageHandler].url = "https://paho.org/fhir/giis/StructureDefinition/giis-village"
* extension[VillageHandler].valueReference = Reference(ExampleVillage)

* extension[BirthPlaceType].url = "https://paho.org/fhir/giis/StructureDefinition/giis-birthplace"
* extension[BirthPlaceType].valueCodeableConcept.coding.system = "https://www.acme.lab/giisbirthplace"
* extension[BirthPlaceType].valueCodeableConcept.coding.code = #hosp
* extension[BirthPlaceType].valueCodeableConcept.coding.display = "Hospital"

* identifier[SystemID].system = "http://www.giisidentifier.org/ID/SystemID"
* identifier[SystemID].value = "16399288"

* name.given = "George"
* name.family = "Denver"

* telecom[GIISPhone].system = #phone
* telecom[GIISPhone].value = "1235413"
* telecom[GIISPhone].use = #home

* telecom[GIISMobile].system = #phone
* telecom[GIISMobile].value = "2341234"
* telecom[GIISMobile].use = #mobile

* telecom[GIISEmail].system = #email
* telecom[GIISEmail].value = "example@email.com"
* telecom[GIISEmail].use = #home

* contact.relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact.relationship.coding.code = #N
* contact.name.text = "Miranda Denver"
* contact.telecom.system = #email
* contact.telecom.value = "mirdenver@email.com"

* gender = #male

* birthDate = "1996-12-13"
* managingOrganization = Reference(ExampleHealthfacility)