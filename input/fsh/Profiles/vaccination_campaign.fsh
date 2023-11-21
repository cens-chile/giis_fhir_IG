Profile: VaccinationCampaign
Parent: CarePlan
Id: VaccinationCampaign
Description: "Vaccination Campaign of a vaccination event"

* status MS 
* status = #unknown

* intent MS 
* intent = #proposal

* subject MS 
* subject ^short = "Who the vaccination campaign is for"

* title 1..1 MS 
* title ^short = "Human-friendly name of the vaccination campaign"

* period MS  