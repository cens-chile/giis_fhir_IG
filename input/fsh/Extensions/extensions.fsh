/* ---------------------------------------EXTENSIONS----------------------------------------*/

Extension: IdNumber
Id: giis-idnumber
Description: "Extension made for handling a PIN, as some countries have and use it."
* valueString 0..1

Extension: HealthStatus
Id: giis-healthstatus
Description: "Extension made for handling the health status of the patient."
* valueString 1..1

Extension: Campaign
Id: giis-campaign
Description: "Extension used to handle immunization campaign."
* valueString 0..1 

Extension: AEFIHandler
Id: giis-aefi
Description: "Extension used to handle AEFI related to a vaccination."
* valueBoolean 0..1

Extension: VillageHandler 
Id: giis-village 
Description: "Extension used to handle village related to a patient."
* valueReference only Reference(Location)

