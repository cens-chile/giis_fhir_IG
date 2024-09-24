Profile: GIISPatient
Parent: Patient
Id: GIISPatient
Description: "A patient from GIIS, this one can be either a child or an adult."

* identifier 0..4 MS 

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
* name.given 1..2 MS

* birthDate 1..1 MS

* gender 1..1 MS
* gender ^short = "Gender MUST be #male OR #female"
* gender ^definition = "Gender MUST be #male OR #female, this due to the GIIS handling this internally as a boolean."

* telecom 0..3 MS   

* telecom ^slicing.discriminator[+].type = #value
* telecom ^slicing.discriminator[=].path = "system"
* telecom ^slicing.discriminator[+].type = #value
* telecom ^slicing.discriminator[=].path = "use"
* telecom ^slicing.rules = #closed
* telecom ^slicing.description = "This slice will help us build a proper telecom"
* telecom contains GIISPhone 0..1 MS and GIISMobile 0..1 MS and GIISEmail 0..1 MS
* telecom ^short = "Contact detail for the individual"

* telecom[GIISPhone]
  * system 1..1 MS
  * value 1..1 MS
  * use 1..1 MS
* telecom[GIISPhone].system = #phone
* telecom[GIISPhone].use = #home 

* telecom[GIISMobile]
  * system 1..1 MS
  * value 1..1 MS
  * use 1..1 MS
* telecom[GIISMobile].system = #phone
* telecom[GIISMobile].use = #mobile 

* telecom[GIISEmail]
  * system 1..1 MS
  * value 1..1 MS
  * use 1..1 MS
* telecom[GIISEmail].system = #email
* telecom[GIISEmail].use = #home

* contact 0..1 MS
  * relationship 1..1 MS 
  * relationship.coding.code 1..1 MS
  * name 1..1 MS
  * name.text 1..1 MS 
  * name.text ^short = "Full name of the patient's next of kin" 
  * telecom 1..1 MS 
    * system 1..1 MS
    * value 1..1 MS 
* contact.relationship.coding.code = #N

* address 0..1 MS 
* address.line 0..1 MS 

* managingOrganization 1..1 MS 
* managingOrganization only Reference(HealthFacility)

* extension 2..5

* extension contains VillageHandler named village 1..1 
* extension[village] ^short = "Extension made for making a patient able to reference a village"

* extension contains BirthPlaceType named birthplace 0..1
* extension[birthplace] ^short = "Extension made for handling the birthplace of a GIIS patient, mainly for searching purposes"

* extension contains CommunityType named community 0..1
* extension[community] ^short = "Extension made for handling the community of a GIIS patient, mainly for searching purposes"

* extension contains PatientNotes named notes 0..1
* extension[notes] ^short = "Extension made for being able to add notes to a GIIS patient"

* extension contains PatientRecordCreator named recordCreator 1..1 
* extension[recordCreator] ^short = "Extension made for handling the creator of the patient's record"