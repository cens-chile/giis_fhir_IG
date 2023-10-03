Profile: VaccinationAppointment
Parent: ImmunizationRecommendation
Id: VaccinationAppointment
Description: "The appointment handler for a vaccination event related to the vaccination calendar"
* identifier 1..1 MS 

* date 1..1 MS

* recommendation 1..* MS
* recommendation.doseNumberPositiveInt 1..1 MS 

* recommendation.vaccineCode MS 
* recommendation.vaccineCode from http://hl7.org/fhir/ValueSet/vaccine-code

* recommendation.forecastStatus MS 
* recommendation.forecastStatus from http://hl7.org/fhir/ValueSet/immunization-recommendation-status

* recommendation.dateCriterion.code and recommendation.dateCriterion.value MS
* recommendation.dateCriterion.code.coding.code from http://hl7.org/fhir/ValueSet/immunization-recommendation-date-criterion

* patient only Reference(GIISPatient)