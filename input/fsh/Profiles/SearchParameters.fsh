Instance: name-village
InstanceOf: SearchParameter
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2022-05-23T15:42:22.824+00:00"
* meta.source = "#1713de7ffdefbac0"
* url = "https://paho.org/fhir/giis/SearchParameter/name-village"
* version = "1"
* name = "NameVillage"
* status = #active
* experimental = true
* date = "2023-10-10"
* publisher = "Cens"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "https://cens.cl"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "contacto@cens.cl"
* description = "Patient search done by the village name"
* code = #name-village
* base[0] = #Patient
* type = #string
* expression = "Patient.extension('https://paho.org/fhir/giis/StructureDefinition/giis-village')" // deleted: .resolve().name due to build errors
* multipleAnd = false
* multipleOr = false
* xpathUsage = #normal

Instance: birthplace-giis
InstanceOf: SearchParameter
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2023-11-21T15:52:22.824+00:00"
* meta.source = "#1713de7ffdefbac0"
* url = "https://paho.org/fhir/giis/SearchParameter/birthplace-giis"
* version = "1"
* name = "BirthplaceGIIS"
* status = #active
* experimental = true
* date = "2023-10-10"
* publisher = "Cens"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "https://cens.cl"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "contacto@cens.cl"
* description = "Patient search done by the birthplace"
* code = #birthplace-giis
* base[0] = #Patient
* type = #token
* expression = "Patient.extension('https://paho.org/fhir/giis/StructureDefinition/giis-birthplace')"
* multipleAnd = false
* multipleOr = false
* xpathUsage = #normal

Instance: community-giis
InstanceOf: SearchParameter
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2023-11-21T15:52:22.824+00:00"
* meta.source = "#1713de7ffdefbac0"
* url = "https://paho.org/fhir/giis/SearchParameter/community-giis"
* version = "1"
* name = "BirthplaceGIIS"
* status = #active
* experimental = true
* date = "2023-10-10"
* publisher = "Cens"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "https://cens.cl"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "contacto@cens.cl"
* description = "Patient search done by the community"
* code = #community-giis
* base[0] = #Patient
* type = #token
* expression = "Patient.extension('https://paho.org/fhir/giis/StructureDefinition/giis-community')"
* multipleAnd = false
* multipleOr = false
* xpathUsage = #normal

Instance: organization-giis
InstanceOf: SearchParameter
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2023-11-21T15:52:22.824+00:00"
* meta.source = "#1713de7ffdefbac0"
* url = "https://paho.org/fhir/giis/SearchParameter/organization-giis"
* version = "1"
* name = "OrganizationGIIS"
* status = #active
* experimental = true
* date = "2023-10-10"
* publisher = "Cens"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "https://cens.cl"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "contacto@cens.cl"
* description = "Patient search done by the organization"
* code = #organization-name
* base[0] = #Patient
* type = #reference
* expression = "Patient.managingOrganization.resolve().name"
* multipleAnd = false
* multipleOr = false
* xpathUsage = #normal

Instance: vaccination-appointment
InstanceOf: SearchParameter
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2023-11-21T15:52:22.824+00:00"
* meta.source = "#1713de7ffdefbac0"
* url = "https://paho.org/fhir/giis/SearchParameter/vaccination-appointment"
* version = "1"
* name = "VaccinationAppointmentGIIS"
* status = #active
* experimental = true
* date = "2023-10-10"
* publisher = "Cens"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "https://cens.cl"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "contacto@cens.cl"
* description = "Immunization search done by the vaccination appointment"
* code = #vaccination-appointment
* base[0] = #Immunization
* type = #reference
* expression = "Immunization.extension('https://paho.org/fhir/giis/StructureDefinition/giis-appointment')"
* multipleAnd = false
* multipleOr = false
* xpathUsage = #normal

Instance: patient-identifier
InstanceOf: SearchParameter
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2023-11-21T15:52:22.824+00:00"
* meta.source = "#1713de7ffdefbac0"
* url = "https://paho.org/fhir/giis/SearchParameter/patient-identifier"
* version = "1"
* name = "PatientIdentifier"
* status = #active
* experimental = true
* date = "2023-10-10"
* publisher = "Cens"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "https://cens.cl"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "contacto@cens.cl"
* description = "Immunization search done by the patient identifier"
* code = #patient-identifier
* base[0] = #Immunization
* type = #token
* expression = "Immunization.patient.resolve().identifier"
* multipleAnd = false
* multipleOr = false
* xpathUsage = #normal

Instance: careplan-title
InstanceOf: SearchParameter
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2023-11-21T15:52:22.824+00:00"
* meta.source = "#1713de7ffdefbac0"
* url = "https://paho.org/fhir/giis/SearchParameter/careplan-title"
* version = "1"
* name = "CarePlanTitle"
* status = #active
* experimental = true
* date = "2023-10-10"
* publisher = "Cens"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "https://cens.cl"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "contacto@cens.cl"
* description = "CarePlan search by title"
* code = #title
* base[0] = #CarePlan
* type = #string
* expression = "CarePlan.title"
* multipleAnd = false
* multipleOr = false
* xpathUsage = #normal

Instance: vaccine-name
InstanceOf: SearchParameter
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2023-11-21T15:52:22.824+00:00"
* meta.source = "#1713de7ffdefbac0"
* url = "https://paho.org/fhir/giis/SearchParameter/vaccine-name"
* version = "1"
* name = "VaccineName"
* status = #active
* experimental = true
* date = "2023-10-10"
* publisher = "Cens"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "https://cens.cl"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "contacto@cens.cl"
* description = "Vaccine Name search in ItemLot"
* code = #vaccine-name
* base[0] = #Basic
* type = #token
* expression = "Basic.extension('https://paho.org/fhir/giis/StructureDefinition/giis-item-vaccine')"
* multipleAnd = false
* multipleOr = false
* xpathUsage = #normal

// Crear SP Caretaker name.family & name.given como type = #string 

Instance: patient-by-caretaker-name
InstanceOf: SearchParameter
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2023-11-21T15:52:22.824+00:00"
* meta.source = "#1713de7ffdefbac0"
* url = "https://paho.org/fhir/giis/SearchParameter/patient-by-caretaker-name"
* version = "1"
* name = "PatientByCaretakerName"
* status = #active
* experimental = true
* date = "2023-10-10"
* publisher = "Cens"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "https://cens.cl"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "contacto@cens.cl"
* description = "Patient search by the caretaker's name
> Notice that this search would end up looking like this: {{base}}/Patient?_has:RelatedPerson:patient:given=*"
* code = #patient-by-caretaker-firstname
* base[0] = #RelatedPerson
* type = #string
* expression = "RelatedPerson.name.given"
* multipleAnd = false
* multipleOr = false
* xpathUsage = #normal

Instance: patient-by-caretaker-lastname
InstanceOf: SearchParameter
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2023-11-21T15:52:22.824+00:00"
* meta.source = "#1713de7ffdefbac0"
* url = "https://paho.org/fhir/giis/SearchParameter/patient-by-caretaker-lastname"
* version = "1"
* name = "PatientByCaretakerLastName"
* status = #active
* experimental = true
* date = "2023-10-10"
* publisher = "Cens"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "https://cens.cl"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "contacto@cens.cl"
* description = "Patient search by the caretaker's last name
> Notice that this search would end up looking like this: {{base}}/Patient?_has:RelatedPerson:patient:family=*"
* code = #patient-by-caretaker-lastname
* base[0] = #RelatedPerson
* type = #string
* expression = "RelatedPerson.name.family"
* multipleAnd = false
* multipleOr = false
* xpathUsage = #normal