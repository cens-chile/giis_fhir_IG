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
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system urn:iso:std:iso:3166

ValueSet: ProfesionalNotificadorVS //revisado CS interno a continuación, LinkID: codigoProfesionNotificador
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
* ^date = "2022-02-02"
* ^publisher = "PAHO - Pan American Health Organization"
* include codes from system ProfesionalNotificadorCS