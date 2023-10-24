Profile: GIISPatient
Parent: Patient
Id: GIISPatient
Description: "A patient from GIIS, this one can be either a child or an adult."
* identifier 0..* MS //0..4

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #closed
* identifier ^slicing.description = "This slice let us know which identifier it is being referenced"
* identifier contains SystemID 0..1 MS and IdentificationNo1 0..1 MS and IdentificationNo2 0..1 MS and IdentificationNo3 0..1 MS

* identifier[SystemID]
  * system 0..1 MS 
  * value 0..1 MS 
* identifier[SystemID] ^short = "Identifier assigned to the patient if the country doesn't handle IDs"
* identifier[SystemID] ^definition = "Identifier assigned to the patient if the country doesn't handle IDs or the patient wasn't registered with one"
* identifier[SystemID].system = "http://www.giisidentifier.org/ID/SystemID"
* identifier[SystemID].system ^short = "endPoint that will validate this ID. For this one, use: http://www.giisidentifier.org/ID/SystemID"
* identifier[SystemID].system ^definition = "Defines the endPoint URL to validate the ID"
* identifier[SystemID].value ^short = "Actual value of the ID, usually a number"
* identifier[SystemID].value ^definition = "Actual value of the ID, usually a number, without any point or script(-)"

* identifier[IdentificationNo1]
  * system 0..1 MS 
  * value 0..1 MS 
* identifier[IdentificationNo1] ^short = "Identifier assigned to the patient if the country does handle IDs"
* identifier[IdentificationNo1] ^definition = "Identifier assigned to the patient if the country does handle IDs"
* identifier[IdentificationNo1].system = "http://www.giisidentifier.org/ID/IdentificationNo1"
* identifier[IdentificationNo1].system ^short = "endPoint that will validate this ID. For this one, use: http://www.giisidentifier.org/ID/IdentificationNo1"
* identifier[IdentificationNo1].system ^definition = "Defines the endPoint URL to validate the ID"
* identifier[IdentificationNo1].value ^short = "Actual value of the ID, usually a number"
* identifier[IdentificationNo1].value ^definition = "Actual value of the ID, usually a number, without any point or script(-)"

* identifier[IdentificationNo2]
  * system 0..1 MS 
  * value 0..1 MS 
* identifier[IdentificationNo2] ^short = "Identifier assigned to the patient if the country does handle IDs"
* identifier[IdentificationNo2] ^definition = "Identifier assigned to the patient if the country does handle IDs"
* identifier[IdentificationNo2].system = "http://www.giisidentifier.org/ID/IdentificationNo2"
* identifier[IdentificationNo2].system ^short = "endPoint that will validate this ID. For this one, use: http://www.giisidentifier.org/ID/IdentificationNo2"
* identifier[IdentificationNo2].system ^definition = "Defines the endPoint URL to validate the ID"
* identifier[IdentificationNo2].value ^short = "Actual value of the ID, usually a number"
* identifier[IdentificationNo2].value ^definition = "Actual value of the ID, usually a number, without any point or script(-)"

* identifier[IdentificationNo3]
  * system 0..1 MS 
  * value 0..1 MS 
* identifier[IdentificationNo3] ^short = "Identifier assigned to the patient if the country does handle IDs"
* identifier[IdentificationNo3] ^definition = "Identifier assigned to the patient if the country does handle IDs"
* identifier[IdentificationNo3].system = "http://www.giisidentifier.org/ID/IdentificationNo3"
* identifier[IdentificationNo3].system ^short = "endPoint that will validate this ID. For this one, use: http://www.giisidentifier.org/ID/IdentificationNo3"
* identifier[IdentificationNo3].system ^definition = "Defines the endPoint URL to validate the ID"
* identifier[IdentificationNo3].value ^short = "Actual value of the ID, usually a number"
* identifier[IdentificationNo3].value ^definition = "Actual value of the ID, usually a number, without any point or script(-)"

* name 1..1 MS
* name.family 1..1 MS 
* name.given 1..1 MS

* birthDate 1..1 MS
* gender 1..1 MS

* telecom 0..* MS   
  * system 0..1 MS
  * system from http://hl7.org/fhir/ValueSet/contact-point-system
  * system ^binding.description = "Use phone | email" 
  * value 0..1 MS
  * use 0..1 MS 
  * use from http://hl7.org/fhir/ValueSet/contact-point-use
  * use ^binding.description = "If you want to save mobile phone, use = mobile, if not, use = home"
* telecom ^short = "Contact detail for the individual"

* address 0..1 MS 
* address.city 0..1 MS 

* managingOrganization 1..1 MS 
* managingOrganization only Reference(HealthFacility)

// * extension contains IdNumber named PIN 0..1 
// * extension[PIN] ^short = "Extension made for handling PIN, if the country uses it." 

* extension contains VillageHandler named village 1..1 
* extension[village] ^short = "Extension made for making a patient able to reference a village"