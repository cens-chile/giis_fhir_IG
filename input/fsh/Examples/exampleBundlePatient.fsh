Instance: ExampleBundlePatient
Title: "Patient Bundle"
Description: "Bundle for the GIIS Patient"
InstanceOf: BundlePatient
Usage: #example

* type = #collection

* entry[patient].fullUrl = "http://acme.com/ehr/fhir/Patient/ExampleGiispatient"
* entry[patient].resource = ExampleGiispatient

* entry[relatedperson].fullUrl = "http://acme.com/ehr/fhir/Relatedperson/ExampleCaretaker"
* entry[relatedperson].resource = ExampleCaretaker

* entry[location].fullUrl = "http://acme.com/ehr/fhir/Location/ExampleVillage"
* entry[location].resource = ExampleVillage

* entry[organization].fullUrl = "http://acme.com/ehr/fhir/Organization/ExampleHealthfacility"
* entry[organization].resource = ExampleHealthfacility