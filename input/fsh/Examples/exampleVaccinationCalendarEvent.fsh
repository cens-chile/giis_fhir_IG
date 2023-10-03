Instance: ExampleVaccinationCalendarEvent
InstanceOf: VaccinationCalendarEvent
Title: "Example Vaccination calendar event"
Description: "Example of a vaccination calendar event, related to childs. There will also be an appointment related to this patient's vaccination event."
Usage: #example

* extension[AEFIHandler].valueBoolean = false

* identifier.value = "vc-1230"

* patient = Reference(ExampleGiispatient)
* location = Reference(ExampleHealthfacilityLocation)

* status = #completed 

* occurrenceDateTime = "2023-08-13"

* lotNumber = "all231"

* vaccineCode.coding = http://hl7.org/fhir/sid/cvx#146

* site.coding = http://terminology.hl7.org/CodeSystem/v3-ActSite#LA