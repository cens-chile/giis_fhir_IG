Profile: ItemLot
Parent: Basic
Id: ItemLot
Description: "Item Lot"

* identifier 1..1 MS 
  * value 1..1 MS
  * system 1..1 MS
* identifier.system = "http://www.giisidentifier.org/ID/ItemLot"

* code 1..1 MS
* code.text 1..1 MS 
* code.text = "Item Lot"

* extension 1..1

* extension contains ItemVaccine named vaccine 1..1 