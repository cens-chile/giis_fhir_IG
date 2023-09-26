Profile: VaccinationCalendarEvent
Parent: Immunization
Description: "A vaccination event related to a vaccination calendar. This vaccination event is only for child patients."

* identifier 1..1 MS
* status 1..1 MS 
* patient only Reference(GIISPatient) 
* occurrenceDateTime 1..1 MS
* occurrenceDateTime ^short = "Vaccine administration date YY-MM-DD."
* site 1..1 MS 
* statusReason 0..1 MS 
* location only Reference(HealthFacilityLocation)
* lotNumber 1..1 MS 

//Immunization campaign extension
* extension contains Campaign named immunizationCampaign 0..1 MS 
* extension[immunizationCampaign] ^short = "Extension made for handling Immunization Campaigns." 

//AEFI true-false extension
* extension contains AEFIHandler named AEFI 0..1 MS 
* extension[AEFI] ^short = "Extension made for handling AEFI."
