Instance: ExampleESAVIOperationDefinition
Title: "ESAVI Operation Definition"
Description: "Example of the ESAVI operation definition"
InstanceOf: ESAVIOperationDefinition
Usage: #example

* status = #draft

* kind = #operation

* resource = #QuestionnaireResponse

* name = "Find ESAVI by date"

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
* parameter[=].max = "*"
* parameter[=].use = #out 
* parameter[=].documentation = "Each QuestionnaireResponse found in the range of dates"
* parameter[=].type = #QuestionnaireResponse