### ESAVI Request POST 

There will be a post of a resource that looks like this: 

        PSOT http://localhost:8080/fhir/QuestionnaireResponse/

And the body will be something like this example: 

        {
        "resourceType": "QuestionnaireResponse",
            "meta": {
            "profile" : [
            "https://paho.org/fhir/giis/StructureDefinition/EsaviQuestionnaireResponse"
            ]
        },
        "item": [
            {
            "linkId" : "datosIdVacunado",
            "text" : "Demographic data of the vaccinated that has generated an ESAVI",
            "item" : [
                {
                "linkId" : "datosPaciente",
                "text" : "Vaccinated patient data",
                "item" : [
                    {
                    "linkId" : "idPaciente",
                    "text" : "UUID Identification of the person vaccinated/affected by ESAVI",
                    "answer" : [
                        {
                        "valueString" : "60114"
                        }
                    ]
                    },
                    {
                    "linkId" : "sexoPaciente",
                    "text" : "Patient's gender",
                    "answer" : [
                        {
                        "valueCoding" : {
                            "system" : "http://hl7.org/fhir/administrative-gender",
                            "code" : "male"
                        }
                        }
                    ]
                    },
                    {
                    "linkId" : "fechaNacimiento",
                    "text" : "Patient's birthdate",
                    "answer" : [
                        {
                        "valueDate" : "2030-01-01"
                        }
                    ]
                    }
                ]
                },
                {
                "linkId" : "antecedentesEnfermedadesPrevias",
                "text" : "History of previous illnesses",
                "item" : [
                    {
                    "linkId" : "descripcionEnfPrevia",
                    "text" : "Description of the previous health problems of the patient affected by the ESAVI with emphasis on comorbidities or diseases concomitant to the adverse event, previous similar events and medical events relevant to the current health event (if the disease is coded, it is the description corresponding to the code).",
                    "answer" : [
                        {
                        "valueString" : "Several Allergies to grass, dust, cat hair. headache"
                        }
                    ]
                    }
                ]
                }
            ]
            },
            {
            "linkId": "antecedentesFarmacosVacunas",
            "text": "Pharmacological Historys",
            "item": [
                {
                "linkId": "datosVacunas",
                "text": "Data of the administered vaccines",
                "item": [
                    {
                    "linkId": "nombreVacuna",
                    "text": "Name of the vaccine administered",
                    "answer": [
                        {
                        "valueString": "MMRrrr"
                        }
                    ]
                    },
                    {
                    "linkId": "identificadorVacuna",
                    "text": "Correlative identifier of the vaccine useful to refer to the vaccine registered in other sections of the guide.",
                    "answer": [
                        {
                        "valueInteger": 0
                        }
                    ]
                    },
                    {
                    "linkId": "numeroDosisVacuna",
                    "text": "Ordinal number of the administered dose",
                    "answer": [
                        {
                        "valueInteger": 0
                        }
                    ]
                    }
                ]
                },
                {
                "linkId": "datosVacunacion",
                "text": "Data related to the vaccination process",
                "item": [
                    {
                    "linkId": "nombreVacunatorio",
                    "text": "Vacunatory's name",
                    "answer": [
                        {
                        "valueString": "Saint's George Hospital"
                        }
                    ]
                    },
                    {
                    "linkId": "nombreDireccionVacunatorio",
                    "text": "Full address of the institution where the vaccine was administered",
                    "answer": [
                        {
                        "valueString": " Ave. 12399"
                        }
                    ]
                    }
                ]
                }
            ]
            },
            {
            "linkId": "tipoVacunacion",
            "item": [

                        {
                "linkId" : "vaccinationEventCalendarId",
                "text" : "Id of a GIIS calendarized vaccination event (Vaccination Appointment",
                "answer" : [
                    {
                    "valueInteger" : 338817
                    }
                ]
                }
            ]
            },
            {
            "linkId": "registroESAVI",
            "text": "ESAVI registry developed by the vaccinated",
            "item": [
                {
                "linkId": "datosESAVI",
                "text": "Information on ESAVI and its classification according to severity",
                "item": [
                    {
                    "linkId": "nombreESAVI",
                    "text": "ESAVI name",
                    "answer": [
                        {
                        "valueCoding": {
                            "code": "05",
                            "system": "http://acme.com/fhir/adverse-eventssadas",
                            "display": "Headache, stomacache, vomits"
                        }
                        }
                    ]
                    },
                    {
                    "linkId": "fechaESAVI",
                    "text": "ESAVI start date referred by the patient or identified by the physician",
                    "answer": [
                        {
                        "valueDate": "2023-12-19"
                        }
                    ]
                    },
                    {
                    "linkId": "descripcionESAVI",
                    "text": "Narrative description of ESAVI",
                    "answer": [
                        {
                        "valueString": "DescEsavi-stomacache"
                        }
                    ]
                    }
                ]
                },
                {
                "linkId": "gravedadESAVI",
                "text": "Determination of the severity status of ESAVI",
                "item": [
                    {
                    "linkId": "tipoGravedad",
                    "text": "Is the ESAVI Serious?",
                    "answer": [
                        {
                        "valueString": "Severe"
                        }
                    ]
                    }
                ]
                }
            ]
            }
        ]
        }


### ESAVI Response POST

The response of the post will be a **201 Created Status Code** that will return the Id of the QuestionnaireResponse. 

### ESAVI Request/Response GET

There will be two types of searches for ESAVIs

- The first one will be for the patient ID, it will look something like this: 

        GET http://localhost:8080/fhir/QuestionnaireResponse?patient=124874

This will return every esavi related to this patient in particular

- The first one will be for a range of dates, for this, an OperationDefinition resource was created

It will look something like this: 
        
        GET http://localhost:8080/fhir/QuestionnaireResponse/$find-esavi-by-date?start=2023-01-01&end=2023-12-20

> The "start" will be the first date on the range, "end" will be the second one. 

This will return every ESAVI that happened between the first and second date. 

### ESAVI Request PUT

There will be a PUT of a resource that looks like this: 

       PUT http://localhost:8080/fhir/QuestionnaireResponse/110

And the body will be something like this example: 

        {
        "resourceType": "QuestionnaireResponse",
        "id": "110",
            "meta": {
            "profile" : [
            "https://paho.org/fhir/giis/StructureDefinition/EsaviQuestionnaireResponse"
            ]
        },
        "item": [
            {
            "linkId" : "datosIdVacunado",
            "text" : "Demographic data of the vaccinated that has generated an ESAVI",
            "item" : [
                {
                "linkId" : "datosPaciente",
                "text" : "Vaccinated patient data",
                "item" : [
                    {
                    "linkId" : "numeroCaso",
                    "text" : "UUID that identifies the case or notification. A person can have more than one notification.",
                    "answer" : [
                        {
                        "valueString" : "110"
                        }
                    ]
                    },
                    {
                    "linkId" : "idPaciente",
                    "text" : "UUID Identification of the person vaccinated/affected by ESAVI",
                    "answer" : [
                        {
                        "valueString" : "60114"
                        }
                    ]
                    },
                    {
                    "linkId" : "sexoPaciente",
                    "text" : "Patient's gender",
                    "answer" : [
                        {
                        "valueCoding" : {
                            "system" : "http://hl7.org/fhir/administrative-gender",
                            "code" : "male"
                        }
                        }
                    ]
                    },
                    {
                    "linkId" : "fechaNacimiento",
                    "text" : "Patient's birthdate",
                    "answer" : [
                        {
                        "valueDate" : "2030-01-01"
                        }
                    ]
                    }
                ]
                },
                {
                "linkId" : "antecedentesEnfermedadesPrevias",
                "text" : "History of previous illnesses",
                "item" : [
                    {
                    "linkId" : "descripcionEnfPrevia",
                    "text" : "Description of the previous health problems of the patient affected by the ESAVI with emphasis on comorbidities or diseases concomitant to the adverse event, previous similar events and medical events relevant to the current health event (if the disease is coded, it is the description corresponding to the code).",
                    "answer" : [
                        {
                        "valueString" : "Several Allergies to grass, dust, cat hair. headache"
                        }
                    ]
                    }
                ]
                }
            ]
            },
            {
            "linkId": "antecedentesFarmacosVacunas",
            "text": "Pharmacological Historys",
            "item": [
                {
                "linkId": "datosVacunas",
                "text": "Data of the administered vaccines",
                "item": [
                    {
                    "linkId": "nombreVacuna",
                    "text": "Name of the vaccine administered",
                    "answer": [
                        {
                        "valueString": "MMRrrr"
                        }
                    ]
                    },
                    {
                    "linkId": "identificadorVacuna",
                    "text": "Correlative identifier of the vaccine useful to refer to the vaccine registered in other sections of the guide.",
                    "answer": [
                        {
                        "valueInteger": 0
                        }
                    ]
                    },
                    {
                    "linkId": "numeroDosisVacuna",
                    "text": "Ordinal number of the administered dose",
                    "answer": [
                        {
                        "valueInteger": 0
                        }
                    ]
                    }
                ]
                },
                {
                "linkId": "datosVacunacion",
                "text": "Data related to the vaccination process",
                "item": [
                    {
                    "linkId": "nombreVacunatorio",
                    "text": "Vacunatory's name",
                    "answer": [
                        {
                        "valueString": "Saint's George Hospital"
                        }
                    ]
                    },
                    {
                    "linkId": "nombreDireccionVacunatorio",
                    "text": "Full address of the institution where the vaccine was administered",
                    "answer": [
                        {
                        "valueString": " Ave. 12399"
                        }
                    ]
                    }
                ]
                }
            ]
            },
            {
            "linkId": "tipoVacunacion",
            "item": [

                        {
                "linkId" : "vaccinationEventCalendarId",
                "text" : "Id of a GIIS calendarized vaccination event (Vaccination Appointment",
                "answer" : [
                    {
                    "valueInteger" : 338817
                    }
                ]
                }
            ]
            },
            {
            "linkId": "registroESAVI",
            "text": "ESAVI registry developed by the vaccinated",
            "item": [
                {
                "linkId": "datosESAVI",
                "text": "Information on ESAVI and its classification according to severity",
                "item": [
                    {
                    "linkId": "nombreESAVI",
                    "text": "ESAVI name",
                    "answer": [
                        {
                        "valueCoding": {
                            "code": "05",
                            "system": "http://acme.com/fhir/adverse-eventssadas",
                            "display": "Headache, stomacache, vomits"
                        }
                        }
                    ]
                    },
                    {
                    "linkId": "fechaESAVI",
                    "text": "ESAVI start date referred by the patient or identified by the physician",
                    "answer": [
                        {
                        "valueDate": "2023-12-19"
                        }
                    ]
                    },
                    {
                    "linkId": "descripcionESAVI",
                    "text": "Narrative description of ESAVI",
                    "answer": [
                        {
                        "valueString": "DescEsavi-stomacache"
                        }
                    ]
                    }
                ]
                },
                {
                "linkId": "gravedadESAVI",
                "text": "Determination of the severity status of ESAVI",
                "item": [
                    {
                    "linkId": "tipoGravedad",
                    "text": "Is the ESAVI Serious?",
                    "answer": [
                        {
                        "valueString": "Severe"
                        }
                    ]
                    }
                ]
                }
            ]
            }
        ]
        }


### ESAVI Response PUT

The response will be similar to the **POST**, with a **201 Status Code**. This will return a message that says "Updated Succesfully".