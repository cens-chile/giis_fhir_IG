Instance: ExampleBundleVaccinationCalendar
Title: "Vaccination calendar event Bundle"
Description: "Vaccination event Bundle, from the vaccination calendar, related to child patients."
InstanceOf: BundleVaccinationCalendar
Usage: #example

* type = #transaction 

* entry[patient].fullUrl = "http://acme.com/ehr/fhir/Patient/ExampleGiispatient"
* entry[patient].resource = ExampleGiispatient
* entry[patient].request.method = #POST
* entry[patient].request.url = "Patient"

* entry[immunizationrecommendation].fullUrl = "http://acme.com/ehr/fhir/ImmunizationRecommendation/ExampleVaxAppointment"
* entry[immunizationrecommendation].resource = ExampleVaccinationAppointment
* entry[immunizationrecommendation].request.method = #POST
* entry[immunizationrecommendation].request.url = "ImmunizationRecommendation"

* entry[immunization].fullUrl = "http://acme.com/ehr/fhir/Immunization/ExampleVaccinationCalendarEvent"
* entry[immunization].resource = ExampleVaccinationCalendarEvent
* entry[immunization].request.method = #POST
* entry[immunization].request.url = "Immunization"

* entry[location].fullUrl = "http://acme.com/ehr/fhir/Location/ExampleHealthfacilityLocation"
* entry[location].resource = ExampleHealthfacilityLocation
* entry[location].request.method = #POST
* entry[location].request.url = "Location"

* entry[organization].fullUrl = "http://acme.com/ehr/fhir/Organization/ExampleHealthfacility"
* entry[organization].resource = ExampleHealthfacility
* entry[organization].request.method = #POST
* entry[organization].request.url = "Organization"