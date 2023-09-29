Profile: VaccinationEvent
Parent: Immunization
Id: VaccinationEvent
Description: "A regular vaccination event, this one is for those ones that happens outside a vaccination calendar, so it can be related to an adult or a child."

* identifier 1..1 MS
* patient only Reference(GIISPatient)
* occurrenceDateTime 1..1 MS
* occurrenceDateTime ^short = "Vaccine administration date YY-MM-DD."
* statusReason 0..1 MS 
* location only Reference(HealthFacilityLocation)
* lotNumber 1..1 MS 
* lotNumber ^short = "If the vaccine is not from stock, the lot number is free text"
* vaccineCode 1..1 MS 
* status 1..1 MS 
* reasonCode 1..1 MS 
* site 1..1 MS

//Immunization campaign extension
* extension contains Campaign named immunizationCampaign 0..1 MS 
* extension[immunizationCampaign] ^short = "Extension made for handling Immunization Campaigns." 

//AEFI boolean extension
* extension contains AEFIHandler named AEFI 0..1 MS 
* extension[AEFI] ^short = "Extension made for handling AEFI."

//Health Status extension 
* extension contains HealthStatus named healthstatus 1..1 MS
* extension[healthstatus] ^short = "Extension made for handling patient's health status prior to this vaccination event"


