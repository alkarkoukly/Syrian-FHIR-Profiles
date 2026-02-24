# Syrian Core FHIR Profiles (R4)

This package builds Syrian base FHIR R4 profiles using a modular approach inspired by the German Basis profile structure.

## Working Method

Development follows this exact sequence:
1. Identify steps
2. Assign TODOs
3. Modify documentation
4. Create/confirm IG scaffold
5. Implement profiles one by one

See `ROADMAP.md` for the active checklist.

## Agreed Build Order

1. Reusable datatype profiles
	- `SyrianIdentifier`
	- `SyrianHumanName`
	- `SyrianAddress`
2. Resource profiles
	- `SyrianPatient`
	- `SyrianEncounter`
	- `SyrianEpisodeOfCare`
	- `SyrianObservation`

## Build

1. Install SUSHI: `npm install -g fsh-sushi`
2. Run in this folder: `sushi .`

Generated output is created under `fsh-generated/`.

## IG Publisher (minimal setup)

- `ig.ini` is included and points to `fsh-generated/resources/ImplementationGuide-sy.core.json`.
- After running `sushi .`, use your local IG Publisher workflow to build the full rendered guide.
