Instance: ExampleCaretaker
Title: "Example of a child's caretaker"
Description: "Example of a child's caretaker"
InstanceOf: ChildCaretaker
Usage: #example

* identifier.value = "14322511"

* patient = Reference(ExampleGiispatient)
* relationship.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#FTH

* name.given = "Michael"
* name.family = "Denver"