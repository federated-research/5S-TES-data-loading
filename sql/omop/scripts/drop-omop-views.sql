-- in case of tidy up, this will drop all omop views from a target schema.

-- In Postgres we can set the "unqualified" schema once
-- so here we set it to the target schema
set search_path to "CaseSensitive5sTesProjectName"; -- force unqualified identifiers to use this case-sensitive schema, not public

DROP view care_site;
DROP view cdm_source;
DROP view cohort;
DROP view cohort_definition;
DROP view concept;
DROP view concept_ancestor;
DROP view concept_class;
DROP view concept_relationship;
DROP view concept_synonym;
DROP view condition_era;
DROP view condition_occurrence;
DROP view cost;
DROP view death;
DROP view device_exposure;
DROP view domain;
DROP view dose_era;
DROP view drug_era;
DROP view drug_exposure;
DROP view drug_strength;
DROP view episode;
DROP view episode_event;
DROP view fact_relationship;
DROP view location;
DROP view measurement;
DROP view metadata;
DROP view note;
DROP view note_nlp;
DROP view observation;
DROP view observation_period;
DROP view payer_plan_period;
DROP view person;
DROP view procedure_occurrence;
DROP view provider;
DROP view relationship;
DROP view source_to_concept_map;
DROP view specimen;
DROP view visit_detail;
DROP view visit_occurrence;
DROP view vocabulary;