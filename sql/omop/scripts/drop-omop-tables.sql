-- in case of tidy up, this will drop all omop tables from a target schema.

-- In Postgres we can set the "unqualified" schema once
-- so here we set it to the target schema
set search_path to "OmopSchemaName"; -- force unqualified identifiers to use this case-sensitive schema, not public

DROP table care_site;
DROP table cdm_source;
DROP table cohort;
DROP table cohort_definition;
DROP table concept;
DROP table concept_ancestor;
DROP table concept_class;
DROP table concept_relationship;
DROP table concept_synonym;
DROP table condition_era;
DROP table condition_occurrence;
DROP table cost;
DROP table death;
DROP table device_exposure;
DROP table domain;
DROP table dose_era;
DROP table drug_era;
DROP table drug_exposure;
DROP table drug_strength;
DROP table episode;
DROP table episode_event;
DROP table fact_relationship;
DROP table location;
DROP table measurement;
DROP table metadata;
DROP table note;
DROP table note_nlp;
DROP table observation;
DROP table observation_period;
DROP table payer_plan_period;
DROP table person;
DROP table procedure_occurrence;
DROP table provider;
DROP table relationship;
DROP table source_to_concept_map;
DROP table specimen;
DROP table visit_detail;
DROP table visit_occurrence;
DROP table vocabulary;