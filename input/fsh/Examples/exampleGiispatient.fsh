Instance: ExampleGiispatient
Title: "Example GIIS Patient"
Description: "GIIS Patient example"
InstanceOf: GIISPatient
Usage: #example


* extension[VillageHandler].url = "https://paho.org/fhir/giis/StructureDefinition/giis-village"
* extension[VillageHandler].valueReference = Reference(ExampleVillage)

* extension[BirthPlaceType].url = "https://paho.org/fhir/giis/StructureDefinition/giis-birthplace"
* extension[BirthPlaceType].valueCodeableConcept.coding.system = "https://paho.org/fhir/giis/CodeSystem/BirthplaceCS"
* extension[BirthPlaceType].valueCodeableConcept.coding.code = #2
* extension[BirthPlaceType].valueCodeableConcept.coding.display = "Hospital"

* extension[CommunityType].url = "https://paho.org/fhir/giis/StructureDefinition/giis-community"
* extension[CommunityType].valueCodeableConcept.coding.system = "https://paho.org/fhir/giis/CodeSystem/CommunityCS"
* extension[CommunityType].valueCodeableConcept.coding.code = #3

* extension[PatientNotes].url = "https://paho.org/fhir/giis/StructureDefinition/giis-patnotes"
* extension[PatientNotes].valueString = "Patient has allergy to ibuprofen"

* extension[recordCreator].url = "https://paho.org/fhir/giis/StructureDefinition/giis-recordcreator"
* extension[recordCreator].valueReference = Reference(ExamplePractitioner)

* identifier[SystemID].system = "http://www.giisidentifier.org/ID/SystemID"
* identifier[SystemID].value = "16399288"

* name.given[0] = "George"
* name.given[+] = "Dylan" 
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

* address.line = "25405 Gibson Lakes"

* gender = #male

* birthDate = "1996-12-13"
* managingOrganization = Reference(ExampleHealthfacility)