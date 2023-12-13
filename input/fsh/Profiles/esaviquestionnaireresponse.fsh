Profile: EsaviQuestionnaireResponse
Parent: QuestionnaireResponse
Id: EsaviQuestionnaireResponse
Description: "Questionnaire response used to handle the ESAVI questionnaire for GIIS."

* identifier 1..1 MS 
  * value 1..1 MS 
* identifier.value ^short = "This identifier will be the AefiCase Id"

* status MS 
* status ^definition = "The status MUST be marked as completed or in-progress."
* status from http://hl7.org/fhir/ValueSet/questionnaire-answers-status
* status ^binding.description = "Use in-progress | completed"

* questionnaire 1..1 MS 
* questionnaire = "https://paho.org/fhir/giis/Questionnaire/ESAVIQuestionnaire"

* item 1..* MS 
* item ^short = "Groups, subgroups and questions to be answered based on the Questionnaire."
* item ^comment = "This answers MUST have the same LinkId and data type from the Questionnaire, just as they must respect the restrictions generated both to enable the response, validate the response or terminologies used. "
