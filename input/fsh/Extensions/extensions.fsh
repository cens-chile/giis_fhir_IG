/* ---------------------------------------EXTENSIONS----------------------------------------*/

Extension: HealthStatus
Id: giis-healthstatus
Title: "Health Status"
Description: "Extension made for handling the health status of the patient."
* ^context.type = #element 
* ^context.expression = #Immunization
* value[x] only CodeableConcept
* value[x] ^short = "Health status of the patient prior the immunization"
* url 1..1 MS 
* valueCodeableConcept 1..1
* valueCodeableConcept.coding 0..1 MS
  * system 1..1 MS 
  * code 1..1 MS 
* valueCodeableConcept.text 0..1 MS 
* valueCodeableConcept from https://paho.org/fhir/giis/ValueSet/HealthStatusVS (example)

Extension: Campaign
Id: giis-campaign
Title: "Campaign"
Description: "Extension used to handle vaccination campaigns."
* ^context.type = #element 
* ^context.expression = #Immunization
* valueReference only Reference(VaccinationCampaign)

Extension: AEFIHandler
Id: giis-aefi
Title: "AEFI"
Description: "Extension used to handle AEFI related to a vaccination."
* ^context.type = #element 
* ^context.expression = #Immunization
* valueBoolean 0..1

Extension: VillageHandler 
Id: giis-village
Title: "Village" 
Description: "Extension used to handle village related to a patient, mainly used for searching purposes."
* ^context.type = #element 
* ^context.expression = #Patient
* valueReference only Reference(Village)

Extension: BirthPlaceType
Id: giis-birthplace
Title: "Birthplace"
Description: "Extension used to handle the birthplace of a patient, mainly used for searching purposes."
* ^context.type = #element 
* ^context.expression = #Patient
* value[x] only CodeableConcept
* value[x] ^short = "Birthplace of a patient"
* url 1..1 MS 
* valueCodeableConcept 0..1 MS 
* valueCodeableConcept.coding 0..1 MS
  * system 1..1 MS 
  * code 1..1 MS 
* valueCodeableConcept.text 0..1 MS 
* valueCodeableConcept from https://paho.org/fhir/giis/ValueSet/BirthplaceVS (example)

Extension: CommunityType
Id: giis-community
Title: "Community"
Description: "Extension used to handle the community of a patient"
* ^context.type = #element 
* ^context.expression = #Patient
* value[x] only CodeableConcept
* value[x] ^short = "Community of a patient"
* url 1..1 MS 
* valueCodeableConcept 0..1 MS 
* valueCodeableConcept.coding 1..1 MS  
  * system 1..1 MS
  * code 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from https://paho.org/fhir/giis/ValueSet/CommunityVS (example)


Extension: AppointmentHandler
Id: giis-appointment
Title: "Vaccination Appointment"
Description: "Extension used to be able to do a direct reference to a ImmunizationRecommendation resource from a Immunization resource"
* ^context.type = #element 
* ^context.expression = #Immunization
* valueReference only Reference(VaccinationAppointment)

Extension: LotIdNumber
Id: giis-lotidnumber
Title: "Lot Id Number"
Description: "Extension used to handle of the lotId coming or needed for the GIIS database"
* ^context.type = #element
* ^context.expression = #Immunization
* valueInteger 0..1

Extension: PatientNotes
Id: giis-patnotes
Title: "Patient notes"
Description: "Extension made for being able to add notes to a GIIS patient"
* ^context.type = #element
* ^context.expression = #Patient
* valueString 0..1