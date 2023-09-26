Profile: VaccinationAppointment
Parent: ImmunizationRecommendation
Description: "The appointment handler for a vaccination event related to the vaccination calendar"
* identifier 1..1 MS 
* recommendation 1..* MS
* recommendation.doseNumberPositiveInt 1..1 MS 
* recommendation.dateCriterion.code and recommendation.dateCriterion.value MS
* patient only Reference(GIISPatient)