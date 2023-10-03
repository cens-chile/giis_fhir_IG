Instance: ExampleVaccinationAppointment
InstanceOf: VaccinationAppointment
Title: "Example Vaccination Appointment"
Description: "Example of a vaccination appointment"
Usage: #example

* identifier.value = "vapp13"

* date = "2023-10-01"

* recommendation.doseNumberPositiveInt = 2

* recommendation.vaccineCode.coding.system = "http://hl7.org/fhir/sid/cvx"
* recommendation.vaccineCode.coding.code = #54

* recommendation.forecastStatus.coding = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due

* recommendation.dateCriterion.code = http://loinc.org#30981-5
* recommendation.dateCriterion.value = "2023-10-03"

* recommendation.dateCriterion.code = http://loinc.org#59777-3
* recommendation.dateCriterion.value = "2023-10-13"

* patient = Reference(ExampleGiispatient)