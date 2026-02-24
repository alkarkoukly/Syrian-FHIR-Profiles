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

Generated output is created under `fsh-generated/resources/`.

## CI/CD - Automatic Building

GitHub Actions automatically builds this project on every push to `main`. The generated FHIR profiles are available as artifacts in the [Actions tab](https://github.com/alkarkoukly/Syrian-FHIR-Profiles/actions).

## Publishing to Simplifier

To publish profiles to https://fhir.simplifier.net/Syrian-Core-Profiles:

1. **Generate profiles locally**:
   ```bash
   sushi .
   ```

2. **Upload to Simplifier** (manual):
   - Log in to https://fhir.simplifier.net/Syrian-Core-Profiles
   - Click **Upload** → select JSON files from `fsh-generated/resources/`
   - Upload all `*.json` files except `ImplementationGuide-*.json`

3. **Alternative**: Use Simplifier's API
   ```bash
   for file in fsh-generated/resources/*.json; do
     [[ "$file" != *"ImplementationGuide"* ]] && \
     curl -u your-username:your-password \
       -F "file=@$file" \
       "https://simplifier.net/api/upload/file?project=Syrian-Core-Profiles"
   done
   ```

## IG Publisher (optional local rendering)

- `ig.ini` is included and points to `fsh-generated/resources/ImplementationGuide-fhir.sy.core-profiles.json`.
- After running `sushi .`, use the [IG Publisher](https://github.com/HL7/fhir-ig-publisher) to build the full rendered guide locally.

## Proposed Work Status

**⚠️ This Implementation Guide is a proposed work in progress.**

The profiles, bindings, and terminology defined here represent a foundation for Syrian healthcare data exchange. These are **not yet official standards** and are offered for community review, feedback, and refinement. Implementations should be prepared for potential breaking changes as we integrate broader stakeholder input.

## Contributing

We welcome contributions from the Syrian medical informatics research community globally. If you would like to:

- **Report issues** or suggest improvements: [Open a GitHub issue](https://github.com/alkarkoukly/Syrian-FHIR-Profiles/issues)
- **Propose profile changes**: Submit a [Pull Request](https://github.com/alkarkoukly/Syrian-FHIR-Profiles/pulls)
- **Join as a researcher collaborator**: Contact the maintainer (see below)

All contributions are valued, whether from established researchers, early-career scientists, or practitioners.

## Researchers & Credits

This work is developed with input from Syrian medical informatics researchers, informaticians, and healthcare data professionals globally working on solutions for Syrian healthcare data standardization.

## Contact

- **Maintainer**: Samer Alkarkoukly
- **Email**: alkarkoukly@users.noreply.github.com
- **Repository**: https://github.com/alkarkoukly/Syrian-FHIR-Profiles

