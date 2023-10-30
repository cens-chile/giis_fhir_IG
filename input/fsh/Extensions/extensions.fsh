/* ---------------------------------------EXTENSIONS----------------------------------------*/

// Extension: IdNumber
// Id: giis-idnumber
// Description: "Extension made for handling a PIN, as some countries have and use it."
// * valueString 0..1

Extension: HealthStatus
Id: giis-healthstatus
Title: "Health Status"
Description: "Extension made for handling the health status of the patient."
* valueString 1..1

Extension: Campaign
Id: giis-campaign
Title: "Campaign"
Description: "Extension used to handle immunization campaign."
* valueString 0..1 

Extension: AEFIHandler
Id: giis-aefi
Title: "AEFI"
Description: "Extension used to handle AEFI related to a vaccination."
* valueBoolean 0..1

Extension: VillageHandler 
Id: giis-village
Title: "Village" 
Description: "Extension used to handle village related to a patient, mainly used for searching purposes."
* valueReference only Reference(Location)

Extension: BirthPlaceType
Id: giis-birthplace
Title: "Birthplace"
Description: "Extension used to handle the birthplace of a patient, mainly used for searching purposes."
* valueString 0..1

Extension: CommunityType
Id: giis-community
Title: "Community"
Description: "Extension used to handle the community of a patient"
* valueString 0..1