-- this will create 1:1 views of all omop tables from another schema, inside the specified target schema.
-- it can also be used as a starting point for filtered views.

-- In Postgres we can set the "unqualified" schema once
-- so here we set it to the target schema
set search_path to "CaseSensitive5sTesProjectName"; -- force unqualified identifiers to use this case-sensitive schema, not public

-- unfortunately schema names cannot be parameterised,
-- so find and replace is necessary for the source schema in the below statements:

CREATE view care_site as select * from omop1k.care_site;
CREATE view cdm_source as select * from omop1k.cdm_source;
CREATE view cohort as select * from omop1k.cohort;
CREATE view cohort_definition as select * from omop1k.cohort_definition;
CREATE view concept as select * from omop1k.concept;
CREATE view concept_ancestor as select * from omop1k.concept_ancestor;
CREATE view concept_class as select * from omop1k.concept_class;
CREATE view concept_relationship as select * from omop1k.concept_relationship;
CREATE view concept_synonym as select * from omop1k.concept_synonym;
CREATE view condition_era as select * from omop1k.condition_era;
CREATE view condition_occurrence as select * from omop1k.condition_occurrence;
CREATE view cost as select * from omop1k.cost;
CREATE view death as select * from omop1k.death;
CREATE view device_exposure as select * from omop1k.device_exposure;
CREATE view domain as select * from omop1k.domain;
CREATE view dose_era as select * from omop1k.dose_era;
CREATE view drug_era as select * from omop1k.drug_era;
CREATE view drug_exposure as select * from omop1k.drug_exposure;
CREATE view drug_strength as select * from omop1k.drug_strength;
CREATE view episode as select * from omop1k.episode;
CREATE view episode_event as select * from omop1k.episode_event;
CREATE view fact_relationship as select * from omop1k.fact_relationship;
CREATE view location as select * from omop1k.location;
CREATE view measurement as select * from omop1k.measurement;
CREATE view metadata as select * from omop1k.metadata;
CREATE view note as select * from omop1k.note;
CREATE view note_nlp as select * from omop1k.note_nlp;
CREATE view observation as select * from omop1k.observation;
CREATE view observation_period as select * from omop1k.observation_period;
CREATE view payer_plan_period as select * from omop1k.payer_plan_period;
CREATE view person as select * from omop1k.person;
CREATE view procedure_occurrence as select * from omop1k.procedure_occurrence;
CREATE view provider as select * from omop1k.provider;
CREATE view relationship as select * from omop1k.relationship;
CREATE view source_to_concept_map as select * from omop1k.source_to_concept_map;
CREATE view specimen as select * from omop1k.specimen;
CREATE view visit_detail as select * from omop1k.visit_detail;
CREATE view visit_occurrence as select * from omop1k.visit_occurrence;
CREATE view vocabulary as select * from omop1k.vocabulary;