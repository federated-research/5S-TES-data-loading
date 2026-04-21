# 5S-TES Data Loading

This repository contains context, approaches, and sample scripts and tools for managing loading data into TRE data sources for Five Safes TES.

It will grow over time with different approaches, and approach-specific READMEs are throughout the repository structure.

## Data loading approaches

Currently the only examples relate to loading OMOP data into a PostgreSQL database, in `/sql/omop`

## Project data approaches

Currently the provided samples align with the default behaviours of the Five Safes TES Agent:

- Postgres project datasets are always in the same database on the same server.
- Projects are granted readonly access on a specific schema on that server, matching their Project name (case-sensitive).

A common pattern as used by the current samples is to load datasets into their own clearly named schema, and then present 1:1 (or filtered as appropriate) views of that schema's tables in a given individual Project's named schema.

This allows easily for multiple Projects to have access to the same datasets, without loading or storing the data more than once.