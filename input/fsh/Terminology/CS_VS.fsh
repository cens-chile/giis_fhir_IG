// CODE SYSTEMS

CodeSystem: VaccineCodeCS
Id: VaccineCodeCS
Title: "Vaccines codes"
Description: "Codes for vaccines coming from the GIIS database"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-11-07"
* ^content = #complete

CodeSystem: VaccinationSiteCS
Id: VaccinationSiteCS
Title: "Vaccination site codes"
Description: "Codes for vaccination sites coming from the GIIS database"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-11-07"
* ^content = #complete

CodeSystem: VaccinationReasonCS
Id: VaccinationReasonCS
Title: "Vaccination reason codes"
Description: "Codes for vaccination reason coming from the GIIS database"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-11-07"
* ^content = #complete

CodeSystem: NonVaccinationReasonCS
Id: NonVaccinationReasonCS
Title: "Non vaccination reason codes"
Description: "Codes for non vaccination reason coming from the GIIS database"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-11-07"
* ^content = #complete

CodeSystem: VaccinationCampaignCS
Id: VaccinationCampaignCS
Title: "Vaccination Status codes"
Description: "Codes for vaccination campaigns coming from the GIIS database"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-11-07"
* ^content = #complete

CodeSystem: HealthStatusCS
Id: HealthStatusCS
Title: "Health Status codes"
Description: "Codes for Health Status coming from the GIIS database"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-11-07"
* ^content = #complete


// VALUE SETS

ValueSet: VaccineCodeVS
Id: VaccineCodeVS
Title: "Vaccine codes"
Description: "Vaccine codes defined on the GIIS database"
* include codes from system VaccineCodeCS

ValueSet: VaccinationSiteVS
Id: VaccinationSiteVS
Title: "Vaccination body site"
Description: "Vaccination body site defined on the GIIS database"
* include codes from system VaccinationSiteCS

ValueSet: VaccinationReasonVS
Id: VaccinationReasonVS
Title: "Vaccination reason"
Description: "Vaccination reason defined on the GIIS database"
* include codes from system VaccinationReasonCS

ValueSet: NonVaccinationReasonVS
Id: NonVaccinationReasonVS
Title: "Non vaccination reason"
Description: "Non vaccination reason defined on the GIIS database"
* include codes from system NonVaccinationReasonCS

ValueSet: VaccinationCampaignVS
Id: VaccinationCampaignVS
Title: "Vaccination Campaign"
Description: "Vaccination Campaign defined on the GIIS database"
* include codes from system VaccinationCampaignCS

ValueSet: HealthStatusVS
Id: HealthStatusVS
Title: "Health Status"
Description: "Health Status defined on the GIIS database"
* include codes from system HealthStatusCS