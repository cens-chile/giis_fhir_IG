Profile: VaccinationCalendarEvent
Parent: Immunization
Id: VaccinationCalendarEvent
Description: "A vaccination event related to a vaccination calendar. This vaccination event is only for child patients."

// * identifier 1..1 MS

* status 1..1 MS 
* status ^short = "Code MUST be #completed OR #not-done"

* patient only Reference(GIISPatient) 

* occurrenceDateTime 1..1 MS
* occurrenceDateTime ^short = "Vaccine administration date as YYYY-MM-DD."

* site 1..1 MS 
  * coding 0..1 MS
    * code 1..1 MS  
    * system 1..1 MS 
    * system = "https://paho.org/fhir/giis/CodeSystem/VaccinationSiteCS "  
  * text 0..1 MS
* site from https://paho.org/fhir/giis/ValueSet/VaccinationSiteVS (example)

* statusReason 0..1 MS 
  * coding 0..1 MS
    * code 1..1 MS  
    * system 1..1 MS 
    * system = "https://paho.org/fhir/giis/CodeSystem/VaccinationReasonCS"
  * text 0..1 MS
* statusReason from https://paho.org/fhir/giis/ValueSet/NonVaccinationReasonVS (example)

* location only Reference(HealthFacilityLocation)

* lotNumber 1..1 MS 

* vaccineCode 1..1 MS 
  * coding 0..1 MS
    * code 1..1 MS  
  * text 0..1 MS
* vaccineCode.text ^short = "Vaccine name as text" 
* vaccineCode from https://paho.org/fhir/giis/ValueSet/VaccineCodeVS (example)

* note 0..1 MS 
 
* extension 1..4

//Immunization campaign extension
* extension contains Campaign named vaccinationCampaign 0..1 MS 
* extension[vaccinationCampaign] ^short = "Extension made for handling Immunization Campaigns." 

//AEFI true-false extension
* extension contains AEFIHandler named AEFI 0..1 MS 
* extension[AEFI] ^short = "Extension made for handling AEFI."

//ImmunizationRecomendation reference extension
* extension contains AppointmentHandler named appointment 1..1 MS 
* extension[appointment] ^short = "Extension used to be able to do a direct reference to a ImmunizationRecommendation resource from a Immunization resource"

//LotId Number extension
* extension contains LotIdNumber named lotIdNumber 0..1 MS 
* extension[lotIdNumber] ^short = "Exttension made for handling the LotId number for the GIIS db"