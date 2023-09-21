Profile: ChildCaretaker
Parent: RelatedPerson
Description: "Child's caretaker, can be one of the parents or another person. Child patients must be under 18 years old."
* identifier 1..1 MS
* name 1..1 MS 
* name.family and name.given MS
* relationship 1..1 MS
* relationship.coding.code ^short = "Codeable concept, mother = MTH, father = FTH, caretaker = O"
* patient only Reference(GIISPatient)
