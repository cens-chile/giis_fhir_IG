Instance: ExampleESAVIQuestionnaire-1
Title: "Example ESAVI Questionnaire "
Description: "Example of an answered ESAVI Questionnaire "
InstanceOf: EsaviQuestionnaireResponse
Usage: #example

* meta.versionId = "1"
* meta.lastUpdated = "2022-03-30T14:07:04.371+00:00"
* meta.source = "#0Emc5iUG1akh56hk"

* identifier.value = "f9a9a518-7b6f-472a-bf28-9aad7a8eeb22"
* status = #completed

//////////// datosNotificacionGeneral //////////////////

* item[0].linkId = "datosNotificacionGeneral"
* item[=].text = "Administrative data for the notification"
* item[=].item[0].linkId = "datosNotificacion"
* item[=].item[=].text = "Data of who and where the notification is made"
* item[=].item[=].item[0].linkId = "paisOrigen-Reg"
* item[=].item[=].item[=].text = "Country where the register was originated"
* item[=].item[=].item[=].answer.valueCoding = urn:iso:std:iso:3166#BS
* item[=].item[=].item[+].linkId = "nombreOrganizacionNotificadora"
* item[=].item[=].item[=].text = "Name of the local level institution that makes the primary notification."
* item[=].item[=].item[=].answer.valueString = "Saint's George Hospital"
* item[=].item[=].item[+].linkId = "nombreDireccionOrganizacion"
* item[=].item[=].item[=].text = "Name of the Subnational Geographic Level of the Location of the Notifying Institution"
* item[=].item[=].item[=].answer.valueString = "Saint's George Ave. 12399, BS, Bahamas"
* item[=].item[=].item[+].linkId = "codigoProfesionNotificador"
* item[=].item[=].item[=].text = "Notifier profession code. In this case MUST be = 6"
* item[=].item[=].item[=].answer.valueCoding = http://example.org/CodeSystem/ProfesionalNotificadorCS#6
* item[=].item[+].linkId = "fechas"
* item[=].item[=].text = "Administrative Dates (at least one date is necessary)"
* item[=].item[=].item[0].linkId = "fechaConsulta"
* item[=].item[=].item[=].text = "Date of first consultation with the health service due to ESAVI"
* item[=].item[=].item[=].answer.valueDate = "2020-12-23"

//////////// datosIdVacunado ///////////////

* item[+].linkId = "datosIdVacunado"
* item[=].text = "Demographic data of the vaccinated that has generated an ESAVI"
* item[=].item[0].linkId = "datosPaciente"
* item[=].item[=].text = "Vaccinated patient data"
* item[=].item[=].item[0].linkId = "numeroCaso"
* item[=].item[=].item[=].text = "UUID that identifies the case or notification. A person can have more than one notification."
* item[=].item[=].item[=].answer.valueString = "f9a9a518-7b6f-472a-bf28-9aad7a8eeb22"
* item[=].item[=].item[+].linkId = "idPaciente"
* item[=].item[=].item[=].text = "UUID Identification of the person vaccinated/affected by ESAVI"
* item[=].item[=].item[=].answer.valueString = "18333222"
* item[=].item[=].item[+].linkId = "sexoPaciente"
* item[=].item[=].item[=].text = "Patient's gender"
* item[=].item[=].item[=].answer.valueCoding = http://hl7.org/fhir/administrative-gender#male
* item[=].item[=].item[+].linkId = "fechaNacimiento"
* item[=].item[=].item[=].text = "Patient's birthdate"
* item[=].item[=].item[=].answer.valueDate = "2000-11-11"
* item[=].item[+].linkId = "antecedentesEnfermedadesPrevias"
* item[=].item[=].text = "History of previous illnesses"
* item[=].item[=].item[0].linkId = "descripcionEnfPrevia"
* item[=].item[=].item[=].text = "Description of the previous health problems of the patient affected by the ESAVI with emphasis on comorbidities or diseases concomitant to the adverse event, previous similar events and medical events relevant to the current health event (if the disease is coded, it is the description corresponding to the code)."
* item[=].item[=].item[=].answer.valueString = "Migraine"

///////// antecedentesFarmacosVacunas ////////////////

* item[+].linkId = "antecedentesFarmacosVacunas"
* item[=].text = "Pharmacological Historys"
* item[=].item[0].linkId = "medicamento"
* item[=].item[=].text = "History of medications that the patient consumes at the time of ESAVI"
* item[=].item[=].item[0].linkId = "nombreMedicamento"
* item[=].item[=].item[=].text = "Name of the drug used concomitantly with the vaccine or relevant to ESAVI, in free text (if coded, it is the description of the code)"
* item[=].item[=].item[=].answer.valueString = "Tylenol"
* item[=].item[+].linkId = "datosVacunas"
* item[=].item[=].text = "Data of the administered vaccines"
* item[=].item[=].item[0].linkId = "nombreVacuna"
* item[=].item[=].item[=].text = "Name of the vaccine administered"
* item[=].item[=].item[=].answer.valueString = "IPV"
* item[=].item[=].item[+].linkId = "identificadorVacuna"
* item[=].item[=].item[=].text = "Correlative identifier of the vaccine useful to refer to the vaccine registered in other sections of the guide."
* item[=].item[=].item[=].answer.valueInteger = 12332
* item[=].item[=].item[+].linkId = "numeroDosisVacuna"
* item[=].item[=].item[=].text = "Ordinal number of the administered dose"
* item[=].item[=].item[=].answer.valueInteger = 1
* item[=].item[+].linkId = "datosVacunacion"
* item[=].item[=].text = "Data related to the vaccination process"
* item[=].item[=].item[0].linkId = "nombreVacunatorio"
* item[=].item[=].item[=].text = "Vacunatory's name"
* item[=].item[=].item[=].answer.valueString = "Saint's George Hospital"
* item[=].item[=].item[+].linkId = "nombreDireccionVacunatorio"
* item[=].item[=].item[=].text = "Full address of the institution where the vaccine was administered"
* item[=].item[=].item[=].answer.valueString = "Saint's George Ave. 12399"

////////// registroEsavi /////////////

* item[+].linkId = "registroESAVI"
* item[=].text = "ESAVI registry developed by the vaccinated"
* item[=].item[0].linkId = "datosESAVI"
* item[=].item[=].text = "Information on ESAVI and its classification according to severity"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].text = "ESAVI name"
* item[=].item[=].item[=].answer.valueString = "Anafilaxia"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].text = "Correlative identifier of the ESAVI useful to refer to the event recorded in other sections of the guide"
* item[=].item[=].item[=].answer.valueInteger = 2312
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].text = "ESAVI start date referred by the patient or identified by the physician"
* item[=].item[=].item[=].answer.valueDate = "2020-12-23"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].text = "Narrative description of ESAVI"
* item[=].item[=].item[=].answer.valueString = "Post vaccination Anafilaxia"
* item[=].item[+].linkId = "gravedadESAVI"
* item[=].item[=].text = "Determination of the severity status of ESAVI"
* item[=].item[=].item[0].linkId = "tipoGravedad"
* item[=].item[=].item[=].text = "Is the ESAVI Serious?"
* item[=].item[=].item[=].answer.valueBoolean = false 