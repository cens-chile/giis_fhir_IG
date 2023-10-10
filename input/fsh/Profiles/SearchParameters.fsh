Instance: name-village
InstanceOf: SearchParameter
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2022-05-23T15:42:22.824+00:00"
* meta.source = "#1713de7ffdefbac0"
* url = "https://paho.org/fhir/giis/SearchParameter/name-village"
* version = "1"
* name = "IdentifierCountry"
* status = #active
* experimental = true
* date = "2023-10-10"
* publisher = "Cens"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "https://cens.cl"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "contacto@cens.cl"
* description = "Patient search done by the village extension"
* code = #name-village
* base[0] = #Patient
* type = #token
* expression = "Patient.extension('https://paho.org/fhir/giis/StructureDefinition/giis-village')"
* xpathUsage = #normal