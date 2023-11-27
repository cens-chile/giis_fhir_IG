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