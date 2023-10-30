### Patient Request POST

        {
        "resourceType": "Bundle",
        "id": "ExampleBundlePatient", 
        "meta": {
            "profile": [
            "https://paho.org/fhir/giis/StructureDefinition/BundlePatient"
            ]
        },
        "type": "transaction",
        "entry": [
            {
            "fullUrl": "Patient/ExampleGiispatient",
            "resource": {
                "resourceType": "Patient",
                "id": "ExampleGiispatient", 
                "meta": {
                "profile": [
                    "https://paho.org/fhir/giis/StructureDefinition/GIISPatient"
                ]
                },
                "text": {
                "status": "extensions",
                "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Patient</b><a name=\"ExampleGiispatient\"> </a></p><div style=\"display: inline-block; background-color: #D9E0E7; padding: 6px; margin: 4px; border: 1px solid #8DA1B4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Patient &quot;ExampleGiispatient&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-GIISPatient.html\">GIISPatient</a></p></div><p><b>VillageHandler</b>: <a href=\"#Location_ExampleVillage\">See above (Location/ExampleVillage)</a></p><p><b>identifier</b>: id: 16399288</p><p><b>name</b>: George Denver </p><p><b>telecom</b>: ph: 12490834(MOBILE)</p><p><b>gender</b>: male</p><p><b>birthDate</b>: 1996-12-13</p><p><b>managingOrganization</b>: <a href=\"#Organization_ExampleHealthfacility\">See above (Organization/ExampleHealthfacility)</a></p></div>"
                },
                "extension": [
                {
                    "url": "https://paho.org/fhir/giis/StructureDefinition/giis-village",
                    "valueReference": {
                    "reference": "Location/ExampleVillage"
                    }
                }
                ],
                "identifier": [
                {
                    "system": "http://www.giisidentifier.org/ID/PatientID1",
                    "value": "16399288"
                },
                {
                    "system": "http://www.giisidentifier.org/ID/PatientID2",
                    "value": "16399288"
                },
                {
                    "system": "http://www.giisidentifier.org/ID/PatientID3",
                    "value": "16399288"
                },
                {
                    "system": "http://www.giisidentifier.org/ID/PatientSystemID",
                    "value": "16399288"
                }
                ],
                "name": [
                {
                    "family": "Denver",
                    "given": [
                    "George"
                    ]
                }
                ],
                "telecom": [
                {
                    "system": "phone",
                    "value": "12490834",
                    "use": "mobile"
                }
                ],
                "gender": "male",
                "birthDate": "1996-12-13",
                "address": [
                {
                    "use": "home",
                    "line": [
                    "123 Main St"
                    ],
                    "city": "Anytown",
                    "state": "CA",
                    "postalCode": "12345",
                    "country": "US"
                }
                ],
                "managingOrganization": {
                "reference": "Organization/ExampleHealthfacility",
                "display": "mi organization"
                }
            },
            "request": {
                "method": "POST",
                "url": "Patient"
            }
            },
            {
            "fullUrl": "http://acme.com/ehr/fhir/RelatedPerson/ExampleCaretaker",
            "resource": {
                "resourceType": "RelatedPerson",
                "id": "ExampleCaretaker", 
                "meta": {
                "profile": [
                    "https://paho.org/fhir/giis/StructureDefinition/ChildCaretaker"
                ]
                },
                "text": {
                "status": "generated",
                "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: RelatedPerson</b><a name=\"ExampleCaretaker\"> </a></p><div style=\"display: inline-block; background-color: #D9E0E7; padding: 6px; margin: 4px; border: 1px solid #8DA1B4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource RelatedPerson &quot;ExampleCaretaker&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ChildCaretaker.html\">ChildCaretaker</a></p></div><p><b>identifier</b>: id: 14322511</p><p><b>patient</b>: <a href=\"#Patient_ExampleGiispatient\">See above (Patient/ExampleGiispatient)</a></p><p><b>relationship</b>: father <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.3.0/CodeSystem-v3-RoleCode.html\">RoleCode</a>#FTH)</span></p><p><b>name</b>: Michael Denver </p></div>"
                },
                "identifier": [
                {
                    "value": "14322511"
                }
                ],
                "patient": {
                "reference": "Patient/ExampleGiispatient"
                },
                "relationship": [
                {
                    "coding": [
                    {
                        "system": "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
                        "code": "FTH"
                    }
                    ]
                }
                ],
                "name": [
                {
                    "family": "Denver",
                    "given": [
                    "Michael"
                    ]
                }
                ]
            },
            "request": {
                "method": "POST",
                "url": "RelatedPerson"
            }
            },
            {
            "fullUrl": "Location/ExampleVillage",
            "resource": {
                "resourceType": "Location",
                "id": "ExampleVillage", 
                "meta": {
                "profile": [
                    "https://paho.org/fhir/giis/StructureDefinition/Village"
                ]
                },
                "text": {
                "status": "generated",
                "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Location</b><a name=\"ExampleVillage\"> </a></p><div style=\"display: inline-block; background-color: #D9E0E7; padding: 6px; margin: 4px; border: 1px solid #8DA1B4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Location &quot;ExampleVillage&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Village.html\">Village</a></p></div><p><b>identifier</b>: id: 04</p><p><b>name</b>: Saint's George</p><p><b>type</b>: Community Location <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.3.0/CodeSystem-v3-RoleCode.html\">RoleCode</a>#COMM)</span></p></div>"
                },
                "identifier": [
                {
                    "value": "04"
                }
                ],
                "name": "Saint's George",
                "type": [
                {
                    "coding": [
                    {
                        "system": "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
                        "code": "COMM"
                    }
                    ]
                }
                ]
            },
            "request": {
                "method": "POST",
                "url": "Location"
            }
            },
            { 
            "fullUrl": "http://acme.com/ehr/fhir/Organization/ExampleHealthfacility",
            "resource": {
                "resourceType": "Organization",
                "id": "ExampleHealthfacility",
                "meta": {
                "profile": [
                    "https://paho.org/fhir/giis/StructureDefinition/HealthFacility"
                ]
                },
                "text": {
                "status": "generated",
                "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Organization</b><a name=\"ExampleHealthfacility\"> </a></p><div style=\"display: inline-block; background-color: #D9E0E7; padding: 6px; margin: 4px; border: 1px solid #8DA1B4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Organization &quot;ExampleHealthfacility&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HealthFacility.html\">HealthFacility</a></p></div><p><b>identifier</b>: id: 02</p><p><b>name</b>: Saint's George Hospital</p></div>"
                },
                "identifier": [
                {
                    "value": "02"
                }
                ],
                "name": "Saint's George Hospital"
            },
            "request": {
                "method": "POST",
                "url": "Organization"
            }
            }
        ]
        }

### Patient Response POST
        {
            "resourceType": "Bundle",
            "id": "1c981bb3-e18f-47fd-b93a-44575c26e9fa",
            "type": "transaction-response",
            "link": [
                {
                    "relation": "self",
                    "url": "http://server.fhir.cl/fhir"
                }
            ],
            "entry": [
                {
                    "response": {
                        "status": "201 Created",
                        "location": "Patient/13/_history/1",
                        "etag": "1",
                        "lastModified": "2023-10-25T14:52:29.626+00:00"
                    }
                },
                {
                    "response": {
                        "status": "201 Created",
                        "location": "RelatedPerson/14/_history/1",
                        "etag": "1",
                        "lastModified": "2023-10-25T14:52:29.626+00:00"
                    }
                },
                {
                    "response": {
                        "status": "201 Created",
                        "location": "Location/15/_history/1",
                        "etag": "1",
                        "lastModified": "2023-10-25T14:52:29.626+00:00"
                    }
                },
                {
                    "response": {
                        "status": "201 Created",
                        "location": "Organization/16/_history/1",
                        "etag": "1",
                        "lastModified": "2023-10-25T14:52:29.626+00:00"
                    }
                }
            ]
        }