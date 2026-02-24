Profile: SyrianPatient
Parent: Patient
Id: syrian-patient
Title: "Syrian Patient"
Description: "Core patient profile for Syrian implementations."

* insert SyrianMeta
* meta.profile 1..*
* identifier 1..*
* identifier only SyrianNationalNumberIdentifier
* name 1..*
* name only SyrianHumanName
* gender 1..1
* birthDate 0..1
* telecom 0..*
* address 0..*
* address only SyrianAddress
* communication 0..*
* communication.language 1..1
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)

Instance: SyrianPatientExample01
InstanceOf: SyrianPatient
Usage: #example
Title: "Syrian Patient Example 01"
Description: "Example patient with Syrian naming structure and national identifier."

* meta.profile[0] = "http://fhir.sy/StructureDefinition/syrian-patient"

* identifier[0].type.coding[0].system = $sy-identifier-type
* identifier[0].type.coding[0].code = #NID
* identifier[0].system = "http://fhir.sy/identifier/syriannationalnumber"
* identifier[0].value = "12345678901"

* name[0].use = #official
* name[0].family = "Al-Hassan"
* name[0].given[0] = "Ahmad"
* name[0].extension[+].url = "http://fhir.sy/StructureDefinition/syrian-mother-name"
* name[0].extension[=].valueString = "Fatima"
* name[0].extension[+].url = "http://fhir.sy/StructureDefinition/syrian-father-name"
* name[0].extension[=].valueString = "Khaled"

* gender = #male
* birthDate = "1987-04-14"

* telecom[0].system = #phone
* telecom[0].value = "+963944123456"
* telecom[0].use = #mobile

* address[0].use = #home
* address[0].extension[+].url = "http://fhir.sy/StructureDefinition/syrian-governorate-text"
* address[0].extension[=].valueString = "Damascus Governorate"
* address[0].extension[+].url = "http://fhir.sy/StructureDefinition/syrian-street-text"
* address[0].extension[=].valueString = "Baghdad Street"
* address[0].extension[+].url = "http://fhir.sy/StructureDefinition/syrian-house-number-text"
* address[0].extension[=].valueString = "12"
* address[0].text = "Damascus Governorate, Baghdad Street, House 12"
* address[0].city = "Damascus"
* address[0].line[0] = "Baghdad Street 12"
* address[0].country = "SY"

* communication[0].language.coding[0].system = "urn:ietf:bcp:47"
* communication[0].language.coding[0].code = #ar-SY
* communication[0].language.text = "Arabic (Syria)"
* communication[0].preferred = true
