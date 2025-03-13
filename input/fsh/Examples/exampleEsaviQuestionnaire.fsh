Instance: ESAVIQuestionnaire 
Title: "ESAVI Questionnaire"
Description: "ESAVI Questionnaire"
InstanceOf: Questionnaire
Usage: #example
* status = #draft
* version = "0.1"
* name = "GIIS-QuestionnaireESAVI"
* title = "ESAVI Questionnaire for GIIS"

/////////////////////  Grupo datosVacunadoCaso //////////////////////////////////
* item[0].type = #group
* item[=].required = true
* item[=].linkId = "datosIdVacunado"
* item[=].text = "Demographic data of the vaccinated that has generated an ESAVI"

/////////////////////  Grupo datosPaciente //////////////////////////////////
* item[=].item.type = #group
* item[=].item.required = true
* item[=].item.linkId = "datosPaciente"
* item[=].item.text = "Vaccinated patient data"

* item[=].item.item[0].type = #string
* item[=].item.item[=].required = false
* item[=].item.item[=].linkId = "numeroCaso"
* item[=].item.item[=].text = "UUID that identifies the case or notification. A person can have more than one notification."

////////////////////////////
* item[=].item.item[+].type = #string
* item[=].item.item[=].required = false
* item[=].item.item[=].linkId = "idPaciente"
* item[=].item.item[=].text = "UUID Identification of the person vaccinated/affected by ESAVI"

////////////////////////////////
* item[=].item.item[+].type = #choice
* item[=].item.item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* item[=].item.item[=].required = false
* item[=].item.item[=].linkId = "sexoPaciente"
* item[=].item.item[=].text = "Patient's gender"

////////////////
* item[=].item.item[+].type = #date
* item[=].item.item[=].required = false
* item[=].item.item[=].linkId = "fechaNacimiento"
* item[=].item.item[=].text = "Patient's birthdate"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueDate = 1900-01-01

/////////////////////  Grupo antecedentesEnfermedadesPrevias //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].linkId = "antecedentesEnfermedadesPrevias"
* item[=].item[=].text = "History of previous illnesses" 

/////////////////////////
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "descripcionEnfPrevia"
* item[=].item[=].item[=].text = "Description of the previous health problems of the patient affected by the ESAVI with emphasis on comorbidities or diseases concomitant to the adverse event, previous similar events and medical events relevant to the current health event (if the disease is coded, it is the description corresponding to the code)."

/////////////////////  Grupo antecedentesFarmacosVacunas //////////////////////////////////
* item[+].type = #group
* item[=].required = true
* item[=].linkId = "antecedentesFarmacosVacunas"
* item[=].text = "Pharmacological Historys"

/////////////////////  Grupo datosVacunas //////////////////////////////////
* item[=].item[0].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].linkId = "datosVacunas"
* item[=].item[=].text = "Data of the administered vaccines"

* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreVacuna"
* item[=].item[=].item[=].text = "Name of the vaccine administered"

* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "codigoVacunaOtro"
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/giis/ValueSet/OtherVaccineVS"
* item[=].item[=].item[=].text = "Vaccine code"

/////////////////////  Grupo codigoVacunaOtro //////////////////////////////////

* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "numeroDosisVacuna"
* item[=].item[=].item[=].text = "Ordinal number of the administered dose"

////  Grupo datosVacunacion /////////

* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].linkId = "datosVacunacion"
* item[=].item[=].text = "Data related to the vaccination process"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreVacunatorio"
* item[=].item[=].item[=].text = "Vacunatory's name"

* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoVacunatorio"
* item[=].item[=].item[=].text = "Code of the institution where the vaccine was administered"

// Grupos tipoVacunacion 

* item[+].type = #group
* item[=].required = true
* item[=].repeats = false
* item[=].linkId = "tipoVacunacion"
* item[=].text = "Data related to a vaccination ID"

* item[=].item[0].type = #integer
* item[=].item[=].required = false
* item[=].item[=].linkId = "vaccinationEventCalendarId"
* item[=].item[=].text = "Id of a GIIS calendarized vaccination event"
// * item[=].item[=].enableWhen[0].question = "vaccinationEventId"
// * item[=].item[=].enableWhen[=].operator = #exist
// * item[=].item[=].enableWhen[=].answerBoolean = false

* item[=].item[+].type = #integer
* item[=].item[=].required = false
* item[=].item[=].linkId = "vaccinationEventId"
* item[=].item[=].text = "Id of a NON calendarized GIIS vaccination event"
// * item[=].item[=].enableWhen[0].question = "vaccinationEventCalendarId"
// * item[=].item[=].enableWhen[=].operator = #exist
// * item[=].item[=].enableWhen[=].answerBoolean = false

/////////////////////  Grupo registroESAVI //////////////////////////////////
* item[+].type = #group
* item[=].required = true
* item[=].linkId = "registroESAVI"
* item[=].text = "ESAVI registry developed by the vaccinated"

/////////////////////  Grupo datosESAVI //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].linkId = "datosESAVI"
* item[=].item[=].text = "Information on ESAVI and its classification according to severity"

//////////////////////////////////
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "nombreESAVI"
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/giis/ValueSet/AEFINameVS"
* item[=].item[=].item[=].text = "ESAVI name"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "fechaESAVI"
* item[=].item[=].item[=].text = "ESAVI start date referred by the patient or identified by the physician"

/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "descripcionESAVI"
* item[=].item[=].item[=].text = "Narrative description of ESAVI"

/////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "estadoPacienteESAVI"
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/giis/ValueSet/AEFIPatientStatusVS"
* item[=].item[=].item[=].text = "Health status of the patient related with this ESAVI event"

/////////////////////

* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "AEFIRecordCreatorID"
* item[=].item[=].item[=].text = "Id of the AEFI record creator"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "AEFIRecordCreatorName"
* item[=].item[=].item[=].text = "Name of the AEFI record creator"

/////////////////////  Grupo gravedadESAVI //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "gravedadESAVI"
* item[=].item[=].text = "Determination of the severity status of ESAVI"

/////////////////////
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/giis/ValueSet/AEFISeverityVS"
* item[=].item[=].item[=].linkId = "tipoGravedad"
* item[=].item[=].item[=].text = "Is the ESAVI Serious?"