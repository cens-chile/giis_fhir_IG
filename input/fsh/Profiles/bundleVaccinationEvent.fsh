Profile: BundleVaccinationEvent
Parent: Bundle
Id: BundleVaccinationEvent
Title: "Bundle Immunization"
Description: "Bundle used to carry all the information related to a vaccination event."

* id MS 
* type MS 
* type = #transaction
* timestamp MS

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed

* entry contains patient 1..1
        and immunizationrecommendation 1..1
        and immunization 1..1
        and location 1..1
        and organization 1..1
* entry[patient].resource only GIISPatient
* entry[immunizationrecommendation].resource only VaccinationAppointment
* entry[immunization].resource only VaccinationEvent
* entry[location].resource only HealthFacilityLocation
* entry[organization].resource only HealthFacility