Instance: ExampleVaccinationAppointment
InstanceOf: VaccinationAppointment
Title: "Example Vaccination Appointment"
Description: "Example of a vaccination appointment"
Usage: #example

* date = "2023-10-01"

* recommendation.vaccineCode.coding.system = "https://paho.org/fhir/giis/CodeSystem/VaccineCodeCS"
* recommendation.vaccineCode.coding.code = #24
* recommendation.vaccineCode.coding.display = "anthrax vaccine"
* recommendation.vaccineCode.text = "anthrax vaccine"

* recommendation.forecastStatus.coding = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due

* recommendation.dateCriterion.code.coding = http://loinc.org#30980-7
* recommendation.dateCriterion.value = "2023-10-30"

* patient = Reference(ExampleGiispatient)