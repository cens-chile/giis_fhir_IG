Instance: ESAVIOperationDefinition 
InstanceOf: OperationDefinition
Usage: #definition
Description: "Operation definition made for the searching of ESAVIs by range of date"
 
* status = #draft

* name = "ESAVIOperationDefinition"

* title = "ESAVI Operation Definition"
 
* kind = #operation

* resource = #QuestionnaireResponse 
 
* code = #find-esavi-by-date
 
* system = false

* type = true

* instance = false

// In params

* parameter[0].name = #start
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "First date of the range to search for ESAVIs"
* parameter[=].use = #in 
* parameter[=].type = #date 

* parameter[+].name = #end
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Second date of the range to search for ESAVIs"
* parameter[=].use = #in 
* parameter[=].type = #date 

// Out params[+]
* parameter[+].name = #return
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].use = #out 
* parameter[=].documentation = "Each QuestionnaireResponse found in the range of dates"
* parameter[=].type = #Bundle
