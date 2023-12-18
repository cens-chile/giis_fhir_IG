Profile: VaccinationEvent
Parent: Immunization
Id: VaccinationEvent
Description: "A regular vaccination event, this one is for those ones that happens outside a vaccination calendar, so it can be related to an adult or a child."

// * identifier 1..1 MS
* patient only Reference(GIISPatient)

* occurrenceDateTime 1..1 MS
* occurrenceDateTime ^short = "Vaccine administration date YYYY-MM-DD."

* statusReason 0..1 MS
  * coding 0..1 MS
    * code 1..1 MS  
  * text 0..1 MS
* statusReason from https://paho.org/fhir/giis/ValueSet/NonVaccinationReasonVS (example)

* location 1..1 MS 
* location only Reference(HealthFacilityLocation)

* lotNumber 0..1 MS 
* lotNumber ^short = "If the vaccine is not from stock, the lot number is free text"

* vaccineCode 1..1 MS 
  * coding 0..1 MS
    * code 0..1 
  * text 1..1 MS
* vaccineCode.text ^short = "Vaccine name as text" 
* vaccineCode from http://hl7.org/fhir/ValueSet/vaccine-code (example)

* status 1..1 MS 
* status ^short = "Code MUST be #completed OR #not-done"

* reasonCode 1..1 MS 
  * coding 0..1 MS
    * code 1..1 MS  
  * text 0..1 MS
* reasonCode from https://paho.org/fhir/giis/ValueSet/VaccinationReasonVS (example)

* site 1..1 MS
  * coding 0..1 MS
    * code 1..1 MS  
  * text 0..1 MS
* site from https://paho.org/fhir/giis/ValueSet/VaccinationSiteVS (example)

* note 0..1 MS 

* extension 1..4

//Immunization campaign extension
* extension contains Campaign named vaccinationCampaign 0..1 MS 
* extension[vaccinationCampaign] ^short = "Extension made for handling Immunization Campaigns." 

//AEFI boolean extension
* extension contains AEFIHandler named AEFI 0..1 MS 
* extension[AEFI] ^short = "Extension made for handling AEFI."

//Health Status extension 
* extension contains HealthStatus named healthstatus 1..1 MS
* extension[healthstatus] ^short = "Extension made for handling patient's health status prior to this vaccination event"

//LotId Number extension
* extension contains LotIdNumber named lotIdNumber 0..1 MS 
* extension[lotIdNumber] ^short = "Exttension made for handling the LotId number for the GIIS db"