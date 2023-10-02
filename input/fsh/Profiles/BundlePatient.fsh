Profile: BundlePatient
Parent: Bundle
Id: BundlePatient
Title: "Bundle Patient"
Description: "Bundle used to carry all the information related to a patient"

* id MS 
* type MS 
* timestamp MS

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed

* entry contains patient 1..1
        and relatedperson 1..1
        and location 1..1
        and organization 1..1
* entry[patient].resource only GIISPatient
* entry[relatedperson].resource only ChildCaretaker
* entry[location].resource only Village
* entry[organization].resource only HealthFacility