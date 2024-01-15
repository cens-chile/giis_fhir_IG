Profile: VaccinationAppointment
Parent: ImmunizationRecommendation
Id: VaccinationAppointment
Description: "The appointment handler for a vaccination event related to the vaccination calendar"

* date 1..1 MS

* recommendation 1..* MS
* recommendation.vaccineCode 1..1 MS 
* recommendation.vaccineCode from https://paho.org/fhir/giis/ValueSet/VaccineCodeVS (example)
* recommendation.vaccineCode.coding 0..1 MS
* recommendation.vaccineCode.coding.code 0..1 MS  
* recommendation.vaccineCode.text 0..1 MS 

* recommendation.forecastStatus 1..1 MS
* recommendation.forecastStatus.text MS
* recommendation.forecastStatus.coding MS  

* recommendation.dateCriterion 1..1 MS
  * code MS 
  * value MS 
* recommendation.dateCriterion.value ^short = "Date as YYYY-MM-DD"

* patient only Reference(GIISPatient)
