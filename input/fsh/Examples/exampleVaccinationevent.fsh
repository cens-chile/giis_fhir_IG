Instance: ExampleVaccinationEvent
InstanceOf: VaccinationEvent
Title: "Example Vaccination event"
Description: "Example of a vaccination event, this ones happens outside a vaccination calendar so it can be related to either a child or an adult"
Usage: #example

* extension[Campaign].valueString = "IPV campaign"
* extension[HealthStatus].valueString = "healthy"
* extension[AEFIHandler].valueBoolean = false

* identifier.value = "ve-1230"

* patient = Reference(ExampleGiispatient)
* location = Reference(ExampleHealthfacilityLocation)

* status = #completed 

* occurrenceDateTime = "2023-08-13"

* lotNumber = "ipv231"

* reasonCode.coding = http://snomed.info/sct#429060002 

* vaccineCode.coding = http://hl7.org/fhir/sid/cvx#10

* site.coding = http://terminology.hl7.org/CodeSystem/v3-ActSite#LA

