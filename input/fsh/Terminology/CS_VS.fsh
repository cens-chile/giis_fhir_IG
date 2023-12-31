// CODE SYSTEMS

CodeSystem: VaccinationSiteCS
Id: VaccinationSiteCS
Title: "Vaccination site codes"
Description: "Codes for vaccination sites, these ones are just examples"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-11-07"
* ^content = #complete
* #1 "Left arm" 
* #2 "Right arm"
* #3 "Left leg"
* #4 "Right leg"
* #5 "Oral route"
* #6 "Unknown"

CodeSystem: NonVaccinationReasonCS
Id: NonVaccinationReasonCS
Title: "Non vaccination reason codes"
Description: "Reasons why the immunization didn't occurred, these ones are just examples"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-11-07"
* ^content = #complete

* #1 "Child is sick" 
* #2 "Child came later"
* #3 "Child has allergies"
* #4 "Stock out"
* #5 "Mother refuses vaccine"
* #6 "Rescheduled"
* #7 "Unknown"

CodeSystem: VaccinationReasonCS
Id: VaccinationReasonCS
Title: "Vaccination reason codes"
Description: "Codes for vaccination reason, these ones are just examples"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-11-07"
* ^content = #complete

* #1 "Adult immunization" 
* #2 "Vaccination campaign"
* #3 "Travel consult"
* #4 "Travel follow up"
* #5 "Immunization catchup"
* #6 "Vaccination campaign"
* #7 "College/Camp"
* #8 "Antenatal"
* #99 "Other"

CodeSystem: HealthStatusCS
Id: HealthStatusCS
Title: "Health Status codes"
Description: "Codes for Health Status, these ones are just examples"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-11-07"
* ^content = #complete

* #1 "Pregnant"
* #2 "Cardiovascular disease"
* #3 "Diabetes"
* #4 "Cancer"
* #5 "Obese"
* #6 "Asthma"
* #7 "Flu"
* #8 "Extremelly clinically vulnerable"
* #9 "Clinically vulnerable"
* #10 "Others"
* #11 "Kidney disease"
* #12 "Clinically vulnerable"
* #13 "Obstructive lung disease"
* #14 "Liver disease"
* #15 "Healthy"

CodeSystem: BirthplaceCS 
Id: BirthplaceCS
Title: "Birthplace codes"
Description: "Codes for birthplaces, these ones are just examples"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-11-07"
* ^content = #complete

* #1 "Home"
* #2 "Hospital"
* #3 "Health facility"
* #6 "Health station"
* #7 "Abroad"
* #8 "BBA (Born Before Arrival)"

CodeSystem: CommunityCS
Id: CommunityCS
Title: "Community codes"
Description: "Codes for communities, these ones are just examples"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-11-07"
* ^content = #complete
 
* #3 "Dalton E Tucker"
* #4 "East End"
* #5 "Elliot"
* #7 "Harrinton Sound"
* #8 "Heron Bay"
* #9 "Northlands" 
* #10 "Paget"
* #11 "Port Royal"

// VALUE SETS

ValueSet: VaccineCodeVS
Id: VaccineCodeVS
Title: "Vaccine codes"
Description: "Vaccine codes used as examples"
* include codes from system http://hl7.org/fhir/sid/cvx
* include codes from system urn:oid:1.2.36.1.2001.1005.17

ValueSet: VaccinationSiteVS
Id: VaccinationSiteVS
Title: "Vaccination body site"
Description: "Vaccination body site codes used as momentary examples"
* include codes from system VaccinationSiteCS

ValueSet: VaccinationReasonVS
Id: VaccinationReasonVS
Title: "Vaccination reason"
Description: "Vaccination reason codes used as momentary examples"
* include codes from system VaccinationReasonCS

ValueSet: NonVaccinationReasonVS
Id: NonVaccinationReasonVS
Title: "Non vaccination reason"
Description: "Non vaccination reason codes used as momentary examples"
* include codes from system NonVaccinationReasonCS

ValueSet: HealthStatusVS
Id: HealthStatusVS
Title: "Health Status"
Description: "Health Status codes used as momentary examples"
* include codes from system HealthStatusCS

ValueSet: BirthplaceVS
Id: BirthplaceVS
Title: "Birthplace"
Description: "Birthplace codes used as momentary examples"
* include codes from system BirthplaceCS

ValueSet: CommunityVS
Id: CommunityVS
Title: "Community"
Description: "Community codes used as momentary examples"
* include codes from system CommunityCS
