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
* instance = true

* parameter MS 
  * name MS 
  * use MS 
  * use = #out
  * min MS
  * min = 1
  * max MS
  * max = "2"
  * type 1..1 MS 
  * type = #date

