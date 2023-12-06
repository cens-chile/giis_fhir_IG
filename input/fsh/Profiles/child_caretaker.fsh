Profile: ChildCaretaker
Parent: RelatedPerson
Id: ChildCaretaker
Description: "Child's caretaker, can be one of the parents or another person. Child patients must be under 18 years old."

* identifier 0..1 MS
  * value 1..1 MS 
* name 0..1 MS 
  * family 1..1 MS 
  * given 1..1 MS
  
* relationship 1..1 MS
* relationship.coding.code 1..1 MS
* relationship from http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype
* relationship.coding.code ^short = "Code MUST be: if mother = MTH, if father = FTH, if caretaker = O"

* patient only Reference(GIISPatient)
