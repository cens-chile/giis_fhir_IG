Instance: ESAVIQuestionnaire 
Title: "ESAVI Questionnaire"
Description: "ESAVI Questionnaire"
InstanceOf: Questionnaire
Usage: #example
* status = #draft
* version = "0.1"
* name = "GIIS-QuestionnaireESAVI"
* title = "ESAVI Questionnaire for GIIS"

/////////////////////  Grupo datosNotificacionGeneral  //////////////////////////
* item[0].type = #group
* item[=].linkId = "datosNotificacionGeneral"
* item[=].text = "Administrative data for the notification"
* item[=].required = true

/////////////////////  Grupo datosNotificacion //////////////////////////////////
* item[=].item[0].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "datosNotificacion"
* item[=].item[=].text = "Data of who and where the notification is made"

* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://example.org/ValueSet/CodPaises"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "paisOrigen-Reg"
* item[=].item[=].item[=].text = "Country where the register was originated"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreOrganizacionNotificadora"
* item[=].item[=].item[=].text = "Name of the local level institution that makes the primary notification."

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreDireccionOrganizacion"
* item[=].item[=].item[=].text = "Name of the Subnational Geographic Level of the Location of the Notifying Institution"

* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://example.org/ValueSet/ProfesionalNotificadorVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoProfesionNotificador"
* item[=].item[=].item[=].text = "Notifier profession code. In this case MUST be = 6"

/////////////////////  Grupo fechas //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "fechas"
* item[=].item[=].text = "Administrative Dates (at least one date is necessary)"

* item[=].item[=].item[0].type = #date
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "fechaConsulta"
* item[=].item[=].item[=].text = "Date of first consultation with the health service due to ESAVI"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = "2020-12-20"

/////////////////////  Grupo datosVacunadoCaso //////////////////////////////////
* item[+].type = #group
* item[=].required = true
* item[=].linkId = "datosIdVacunado"
* item[=].text = "Demographic data of the vaccinated that has generated an ESAVI"

/////////////////////  Grupo datosPaciente //////////////////////////////////
* item[=].item.type = #group
* item[=].item.required = true
* item[=].item.linkId = "datosPaciente"
* item[=].item.text = "Vaccinated patient data"

* item[=].item.item[0].type = #string
* item[=].item.item[=].required = true
* item[=].item.item[=].linkId = "numeroCaso"
* item[=].item.item[=].text = "UUID that identifies the case or notification. A person can have more than one notification."

////////////////////////////
* item[=].item.item[+].type = #string
* item[=].item.item[=].required = true
* item[=].item.item[=].linkId = "idPaciente"
* item[=].item.item[=].text = "UUID Identification of the person vaccinated/affected by ESAVI"

////////////////////////////////
* item[=].item.item[+].type = #choice
* item[=].item.item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* item[=].item.item[=].required = true
* item[=].item.item[=].linkId = "sexoPaciente"
* item[=].item.item[=].text = "Patient's gender"

////////////////
* item[=].item.item[+].type = #date
* item[=].item.item[=].required = true
* item[=].item.item[=].linkId = "fechaNacimiento"
* item[=].item.item[=].text = "Patient's birthdate"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueDate = 1900-01-01

/////////////////////  Grupo antecedentesEnfermedadesPrevias //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
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

/////////////////////  Grupo medicamento //////////////////////////////////
* item[=].item[0].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "medicamento"
* item[=].item[=].text = "History of medications that the patient consumes at the time of ESAVI"


//////////////////////////////////
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreMedicamento"
* item[=].item[=].item[=].text = "Name of the drug used concomitantly with the vaccine or relevant to ESAVI, in free text (if coded, it is the description of the code)"

/////////////////////  Grupo datosVacunas //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "datosVacunas"
* item[=].item[=].text = "Data of the administered vaccines"

//////////////nombreVacuuna OK
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreVacuna"
* item[=].item[=].item[=].text = "Name of the vaccine administered"

//////////////nombreVacuuna OK
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "identificadorVacuna"
* item[=].item[=].item[=].text = "Correlative identifier of the vaccine useful to refer to the vaccine registered in other sections of the guide."

/////////////////////  Grupo codigoVacunaOtro //////////////////////////////////

* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "numeroDosisVacuna"
* item[=].item[=].item[=].text = "Ordinal number of the administered dose"

////  Grupo datosVacunacion /////////

* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "datosVacunacion"
* item[=].item[=].text = "Data related to the vaccination process"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreVacunatorio"
* item[=].item[=].item[=].text = "Vacunatory's name"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreDireccionVacunatorio"
* item[=].item[=].item[=].text = "Full address of the institution where the vaccine was administered"

/////////////////////  Grupo registroESAVI //////////////////////////////////
* item[+].type = #group
* item[=].required = true
* item[=].linkId = "registroESAVI"
* item[=].text = "ESAVI registry developed by the vaccinated"

/////////////////////  Grupo datosESAVI //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "datosESAVI"
* item[=].item[=].text = "Information on ESAVI and its classification according to severity"

//////////////////////////////////
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreESAVI"
* item[=].item[=].item[=].text = "ESAVI name"

* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].text = "Correlative identifier of the ESAVI useful to refer to the event recorded in other sections of the guide"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "fechaESAVI"
* item[=].item[=].item[=].text = "ESAVI start date referred by the patient or identified by the physician"

/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "descripcionESAVI"
* item[=].item[=].item[=].text = "Narrative description of ESAVI"

/////////////////////  Grupo gravedadESAVI //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "gravedadESAVI"
* item[=].item[=].text = "Determination of the severity status of ESAVI"

/////////////////////
* item[=].item[=].item[0].type = #boolean
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "tipoGravedad"
* item[=].item[=].item[=].text = "Is the ESAVI Serious?"

/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "otrosEventosImportantes"
* item[=].item[=].item[=].text = "Other Events considered Medically Important"
* item[=].item[=].item[=].enableWhen.question = "tipoGravedad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "otrosEventosImportantesTx"
* item[=].item[=].item[=].text = "Description of Other Medically Significant Events"
* item[=].item[=].item[=].enableWhen.question = "otrosEventosImportantes"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true