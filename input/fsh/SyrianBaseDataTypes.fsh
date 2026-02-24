RuleSet: SyrianMeta
* ^status = #draft
* ^version = "0.1.0"
* ^publisher = "Syrian Health Informatics Program"
* ^jurisdiction = urn:iso:std:iso:3166#SY "Syrian Arab Republic"

CodeSystem: SyrianIdentifierType
Id: sy-identifier-type
Title: "Syrian Identifier Type"
Description: "Core Syrian identifier type codes extending common HL7 identifier patterns."
* insert SyrianMeta
* ^caseSensitive = true
* ^content = #complete
* #NID "National Identifier"
* #MRN "Medical Record Number"
* #NATPASS "National Passport Number"

ValueSet: SyrianIdentifierTypeVS
Id: sy-identifier-type
Title: "Syrian Identifier Type ValueSet"
Description: "Identifier type value set for Syrian core profiles."
* insert SyrianMeta
* include codes from valueset $identifier-type
* include $v2-0203#MR "Medical record number"
* include $v2-0203#PPN "Passport number"
* include codes from system $sy-identifier-type

Profile: SyrianIdentifier
Parent: Identifier
Id: syrian-identifier
Title: "Syrian Identifier"
Description: "Reusable identifier profile for Syrian core resources."
* insert SyrianMeta
* type 1..1
* type from SyrianIdentifierTypeVS (extensible)
* system 1..1
* value 1..1

Profile: SyrianNationalNumberIdentifier
Parent: SyrianIdentifier
Id: syrian-national-number-identifier
Title: "Syrian National Number Identifier"
Description: "Identifier profile for Syrian national number."
* insert SyrianMeta
* type = $sy-identifier-type#NID "National Identifier"
* system = "http://fhir.sy/identifier/syriannationalnumber"

Extension: SyrianGovernorateText
Id: syrian-governorate-text
Title: "Syrian Governorate Text"
Description: "Governorate in free text form for Syrian addresses."
* insert SyrianMeta
* ^context[0].type = #element
* ^context[0].expression = "Address"
* value[x] only string
* valueString 1..1

Extension: SyrianStreetText
Id: syrian-street-text
Title: "Syrian Street Text"
Description: "Street name in free text form for Syrian addresses."
* insert SyrianMeta
* ^context[0].type = #element
* ^context[0].expression = "Address"
* value[x] only string
* valueString 1..1

Extension: SyrianHouseNumberText
Id: syrian-house-number-text
Title: "Syrian House Number Text"
Description: "House number in free text form for Syrian addresses."
* insert SyrianMeta
* ^context[0].type = #element
* ^context[0].expression = "Address"
* value[x] only string
* valueString 1..1

Profile: SyrianAddress
Parent: Address
Id: syrian-address
Title: "Syrian Address"
Description: "Reusable Address profile for Syrian core resources."
* insert SyrianMeta
* extension contains
	SyrianGovernorateText named governorateText 0..1 and
	SyrianStreetText named streetText 0..1 and
	SyrianHouseNumberText named houseNumberText 0..1
* text 0..1
* city 0..1
* line 0..1
* country from $iso3166-1-2 (preferred)

Extension: SyrianMotherName
Id: syrian-mother-name
Title: "Syrian Mother Name"
Description: "Mother name as part of local naming conventions."
* insert SyrianMeta
* ^context[0].type = #element
* ^context[0].expression = "HumanName"
* value[x] only string
* valueString 1..1

Extension: SyrianFatherName
Id: syrian-father-name
Title: "Syrian Father Name"
Description: "Father name as part of local naming conventions."
* insert SyrianMeta
* ^context[0].type = #element
* ^context[0].expression = "HumanName"
* value[x] only string
* valueString 1..1

Profile: SyrianHumanName
Parent: HumanName
Id: syrian-humanname
Title: "Syrian Human Name"
Description: "Reusable HumanName profile for Syrian core resources."
* insert SyrianMeta
* extension contains
	SyrianMotherName named motherName 0..1 and
	SyrianFatherName named fatherName 0..1
* family 1..1
* given 1..*
