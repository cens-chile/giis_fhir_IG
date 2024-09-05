Instance: ExampleVaccinationCalendarEvent
InstanceOf: VaccinationCalendarEvent
Title: "Example Vaccination calendar event"
Description: "Example of a vaccination calendar event, related to childs. There will also be an appointment related to this patient's vaccination event."
Usage: #example

* extension[AEFIHandler].valueBoolean = false

* extension[Campaign].url = "https://paho.org/fhir/giis/StructureDefinition/giis-campaign"
* extension[Campaign].valueReference = Reference(ExampleVaccinationCampaign)

* extension[AppointmentHandler].url = "https://paho.org/fhir/giis/StructureDefinition/giis-appointment"
* extension[AppointmentHandler].valueReference = Reference(ExampleVaccinationAppointment)

* patient = Reference(ExampleGiispatient)
* location = Reference(ExampleHealthfacilityLocation)

* status = #not-done 

* occurrenceDateTime = "2023-08-13"

* performer.actor = Reference(ExamplePractitioner)

* lotNumber = "all231"

* vaccineCode.coding.system = "https://paho.org/fhir/giis/CodeSystem/VaccineCS"
* vaccineCode.coding.code = #2

* site.coding.system = "https://paho.org/fhir/giis/CodeSystem/VaccinationSiteCS"
* site.coding.code = #1
* site.coding.display = "Left Arm"
* site.text = "Left Arm"

* note.text = "Patient with belonephobia"