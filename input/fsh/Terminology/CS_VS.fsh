// CODE SYSTEMS

CodeSystem: ProfesionalNotificadorCS
Id: ProfesionalNotificadorCS
Title: "Tipo de Profesional Notificador"
Description: "Códigos de Tipo de Notificadores de ESAVI para PAHO"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2022-02-02"
* ^publisher = "ESAVI -"
* ^contact.name = "ESAVI -"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://covid-19pharmacovigilance.paho.org/resources/updates-on-aefi"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "rizzatodan@paho.org"
* ^jurisdiction = $m49.htm#001
* ^content = #complete
* ^count = 6
* #1 "Médico"
* #2 "Farmacéutico"
* #3 "Otro Profesional de la Salud"
* #4 "Abogado"
* #5 "Usuario u otro profesional no sanitario"
* #6 "No definido por el usuario"

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
 
ValueSet: CodPaises //revisado. CS externo ISO 3166, LinkID: paisOrigen-Reg
Id: CodPaises
Title: "Códigos de Países"
Description: "Codigos definidos para la identificación de países segun norma ISO3166-N"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^experimental = false
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system urn:iso:std:iso:3166

ValueSet: ProfesionalNotificadorVS 
Id: ProfesionalNotificadorVS
Title: "Tipo de Profesional Notificador"
Description: "Códigos de Tipo de Notificadores de ESAVI para PAHO"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-02-02"
* ^publisher = "PAHO - Pan American Health Organization"
* include codes from system ProfesionalNotificadorCS

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