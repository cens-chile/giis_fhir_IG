Instance: ExampleItemLot
Title: "Example ItemLot"
Description: "Example of a GIIS ItemLot"
InstanceOf: ItemLot
Usage: #example

* identifier.value = "LH234"
* identifier.system = "http://www.giisidentifier.org/ID/ItemLot"
* code.text = "Item Lot"
* extension[ItemVaccine].url = "https://paho.org/fhir/giis/StructureDefinition/giis-item-vaccine"
* extension[ItemVaccine].valueCodeableConcept.coding.system = "https://paho.org/fhir/giis/CodeSystem/VaccineCodeCS"
* extension[ItemVaccine].valueCodeableConcept.coding.code = #1
* extension[ItemVaccine].valueCodeableConcept.coding.display = "adenovirus vaccine"