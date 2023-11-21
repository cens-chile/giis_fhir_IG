Instance: ExampleVaccinationEvent
InstanceOf: VaccinationEvent
Title: "Example Vaccination event"
Description: "Example of a vaccination event, this ones happens outside a vaccination calendar so it can be related to either a child or an adult"
Usage: #example

* extension[Campaign].url = "https://paho.org/fhir/giis/StructureDefinition/giis-campaign"
* extension[Campaign].valueReference = Reference(ExampleVaccinationCampaign)

* extension[HealthStatus].url = "https://paho.org/fhir/giis/StructureDefinition/giis-healthstatus"
* extension[HealthStatus].valueCodeableConcept.coding.system = "https://paho.org/fhir/giis/CodeSystem/HealthStatusCS"
* extension[HealthStatus].valueCodeableConcept.coding.display = "Healthy"

* extension[AEFIHandler].valueBoolean = false

* patient = Reference(ExampleGiispatient)
* location = Reference(ExampleHealthfacilityLocation)

* status = #completed 

* occurrenceDateTime = "2023-08-13"

* lotNumber = "ipv231"

* reasonCode.coding.system = "https://paho.org/fhir/giis/CodeSystem/VaccinationReasonCS"
* reasonCode.coding.display = "Travelling"

* vaccineCode.coding.system = "https://paho.org/fhir/giis/CodeSystem/VaccineCodeCS"
* vaccineCode.coding.display = "IPV"
* vaccineCode.text = "IPV"

* site.coding.system = "https://paho.org/fhir/giis/CodeSystem/VaccinationSiteCS"
* site.coding.display = "Left Arm"

* note.text = "Patient with belonephobia"