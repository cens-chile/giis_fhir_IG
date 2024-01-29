### Vaccination Event Request POST/PUT

The request will look like this: 

        POST/PUT http://localhost:8080/fhir/Immunization/


And the body will look like this:

        {
            "resourceType" : "Immunization",
            "id" : "ExampleVaccinationEvent",
            "meta" : {
            "profile" : ["https://paho.org/fhir/giis/StructureDefinition/VaccinationEvent"]
            },
            "text" : {
            "status" : "extensions",
            "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Immunization</b><a name=\"ExampleVaccinationEvent\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Immunization &quot;ExampleVaccinationEvent&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-VaccinationEvent.html\">VaccinationEvent</a></p></div><p><b>Campaign</b>: <a href=\"CarePlan-ExampleVaccinationCampaign.html\">CarePlan/ExampleVaccinationCampaign</a></p><p><b>Health Status</b>: Healthy <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-HealthStatusCS.html\">Health Status codes</a>#15)</span></p><p><b>AEFI</b>: false</p><p><b>status</b>: completed</p><p><b>vaccineCode</b>: anthrax vaccine <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (VaccineCS#24)</span></p><p><b>patient</b>: <a href=\"Patient-ExampleGiispatient.html\">Patient/ExampleGiispatient</a> &quot; DENVER&quot;</p><p><b>occurrence</b>: 2023-08-13</p><p><b>location</b>: <a href=\"Location-ExampleHealthfacilityLocation.html\">Location/ExampleHealthfacilityLocation</a> &quot;Saint's George&quot;</p><p><b>lotNumber</b>: av231</p><p><b>site</b>: Left Arm <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-VaccineSiteCS .html\">Vaccination site codes</a>#1)</span></p><p><b>note</b>: Patient with belonephobia</p><p><b>reasonCode</b>: Travel consult <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-VaccinationReasonCS.html\">Vaccination reason codes</a>#3)</span></p></div>"
            },
            "extension" : [{
            "url" : "https://paho.org/fhir/giis/StructureDefinition/giis-campaign",
            "valueReference" : {
                "reference" : "CarePlan/ExampleVaccinationCampaign"
            }
            },
            {
            "url" : "https://paho.org/fhir/giis/StructureDefinition/giis-healthstatus",
            "valueCodeableConcept" : {
                "coding" : [{
                "system" : "https://paho.org/fhir/giis/CodeSystem/HealthStatusCS",
                "code" : "15",
                "display" : "Healthy"
                }],
                "text" : "Healthy"
            }
            },
            {
            "url" : "https://paho.org/fhir/giis/StructureDefinition/giis-aefi",
            "valueBoolean" : false
            }],
            "status" : "completed",
            "vaccineCode" : {
            "coding" : [{
                "system" : "https://paho.org/fhir/giis/CodeSystem/VaccineCS",
                "code" : "24",
                "display" : "anthrax vaccine"
            }],
            "text" : "anthrax vaccine"
            },
            "patient" : {
            "reference" : "Patient/ExampleGiispatient"
            },
            "occurrenceDateTime" : "2023-08-13",
            "location" : {
            "reference" : "Location/ExampleHealthfacilityLocation"
            },
            "lotNumber" : "av231",
            "site" : {
            "coding" : [{
                "system" : "https://paho.org/fhir/giis/CodeSystem/VaccineSiteCS ",
                "code" : "1",
                "display" : "Left Arm"
            }],
            "text" : "Left Arm"
            },
            "note" : [{
            "text" : "Patient with belonephobia"
            }],
            "reasonCode" : [{
            "coding" : [{
                "system" : "https://paho.org/fhir/giis/CodeSystem/VaccinationReasonCS",
                "code" : "3",
                "display" : "Travel consult"
            }],
            "text" : "Travel consult"
            }]
        } 

> Every other resource that builds the Immunization is internally referenced.

### Vaccination Event Response POST/PUT

If everything goes well, will return a **_201 Created/Updated_** Status Code with the id of the resource 

        "resourceType": "Immunization",
        "id": "230",

And the rest would be the created/updated resource.

### Vaccination Event Request & Response GET

For the request you can send something like this:

        GET http://localhost:8080/fhir/Immunization/VE-338821

Which can respond with something like this: 

        {
            "resourceType": "Immunization",
            "id": "630537",
            "identifier": [
                {
                    "value": "630537"
                }
            ],
            "status": "not-done",
            "vaccineCode": {
                "coding": [
                    {
                        "system": "http://hl7.org/fhir/sid/cvx",
                        "code": "DTap/IPV 5 Booster"
                    }
                ]
            },
            "patient": {
                "reference": "Patient/60114"
            },
            "occurrenceDateTime": "2022-03-06",
            "site": {
                "coding": [
                    {
                        "system": "http://terminology.hl7.org/CodeSystem/v3-ActSite",
                        "code": "Abstract"
                    }
                ]
            }
        }
