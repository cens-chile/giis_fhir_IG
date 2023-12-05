Instance: ExampleBundlePatient
Title: "Patient Bundle"
Description: "Bundle for the GIIS Patient"
InstanceOf: BundlePatient
Usage: #example

* type = #transaction

* entry[patient].fullUrl = "http://acme.com/ehr/fhir/Patient/ExampleGiispatient"
* entry[patient].resource = ExampleGiispatient
* entry[patient].request.method = #POST
* entry[patient].request.url = "Patient"

* entry[relatedperson].fullUrl = "http://acme.com/ehr/fhir/RelatedPerson/ExampleCaretaker"
* entry[relatedperson].resource = ExampleCaretaker
* entry[relatedperson].request.method = #POST
* entry[relatedperson].request.url = "RelatedPerson"
