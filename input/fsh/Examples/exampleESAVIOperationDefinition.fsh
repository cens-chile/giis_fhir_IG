Instance: ExampleESAVIOperationDefinition
Title: "ESAVI Operation Definition"
Description: "Example of the ESAVI operation definition"
InstanceOf: ESAVIOperationDefinition
Usage: #example

* status = #draft

* kind = #operation

* resource = #QuestionnaireResponse

* name = "findEsaviByDate"

* code = #find-esavi-date

* system = false
* type = true
* instance = true

* parameter.name = #QuestionnaireResponse.item.esavidate 
* parameter.use = #out
* parameter.min = 1
* parameter.max = "2"
* parameter.type = #date