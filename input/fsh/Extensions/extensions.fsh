/* ---------------------------------------EXTENSIONS----------------------------------------*/

Extension: HealthStatus
Id: giis-healthstatus
Title: "Health Status"
Description: "Extension made for handling the health status of the patient."
* valueCodeableConcept 1..1

Extension: Campaign
Id: giis-campaign
Title: "Campaign"
Description: "Extension used to handle vaccination campaigns."
* valueReference only Reference(CarePlan)

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
* valueCodeableConcept 0..1

Extension: CommunityType
Id: giis-community
Title: "Community"
Description: "Extension used to handle the community of a patient"
* valueCodeableConcept 0..1

Extension: AppointmentHandler
Id: giis-appointment
Title: "Vaccination Appointment"
Description: "Extension used to be able to do a direct reference to a ImmunizationRecommendation resource from a Immunization resource"
* valueReference only Reference(ImmunizationRecommendation)