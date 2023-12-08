Profile: ESAVIOperationDefinition 
Parent: OperationDefinition
Id: ESAVIOperationDefinition
Description: "Operation definition made for the searching of ESAVIs by range of date"
 
* status MS 
* status = #draft

* name MS 

* kind MS
* kind = #operation

* resource 1..1 MS
* resource = #QuestionnaireResponse 

* code MS 
* code = #find-esavi-date

* system MS 
* system = false

* type MS 
* type = true

* instance MS
* instance = false

* parameter MS 
  * name MS 
  * use MS 
  * min MS
  * min = 1
  * max MS
  * type 1..1 MS 

