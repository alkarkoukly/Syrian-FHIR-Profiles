# Syrian Core Build Roadmap

This roadmap defines the agreed workflow:
1. Identify steps
2. Assign TODOs
3. Modify documentation
4. Create/confirm IG scaffold
5. Implement profiles one by one

## TODO Checklist

- [x] Define target metadata baseline (Syrian draft values)
- [x] Define profile implementation order
- [ ] Finalize documentation set for the workflow
- [ ] Confirm IG scaffold and publication structure
- [x] Implement profile 1: SyrianIdentifier (reusable datatype)
- [x] Implement profile 2: SyrianHumanName (reusable datatype)
- [x] Implement profile 3: SyrianAddress (reusable datatype)
- [x] Implement profile 4: SyrianPatient
- [ ] Implement profile 5: SyrianEncounter
- [ ] Implement profile 6: SyrianEpisodeOfCare
- [ ] Implement profile 7: SyrianObservation
- [ ] Validate each step with SUSHI build

## Agreed Decisions

- Metadata baseline: keep current Syrian draft values (`http://fhir.sy`, `4.0.1`, `draft`, `0.1.0`)
- TODO assignment style: no owners in checklist
- Implementation order: reusable datatypes first, then resource profiles
- Documentation scope: README + roadmap + pagecontent docs
