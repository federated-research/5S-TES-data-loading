# OMOP DB

This sample provides compose files for:

- running a local dockerised Postgres instance
- loading OMOP 5.4 or 5.3 data, either into the local Postgres instance, or another remote one.

Shared and/or project specific datasets may be loaded to the same database (different schema), and if they are OMOP 5.4 or 5.3, this stack can load them :)

### `.env.example`

The same `.env` options are applicable to either compose file, configuring things such as the login credentials and port to map to.
The `.env` file also configures the optional `omop-lite` service for loading OMOP 5.4 or 5.3 data.

## Loading data

A 1k Synthetic OMOP dataset is built in to `omop-lite`.

Loading data is done by `omop-lite`. This is included in either sample `compose.yml`.

The expected pattern for 5 Safes TES is that all TRE data is loaded to the same database (e.g. `tredata`) but then a schema per-project.

Shared data can be loaded to its own schema (e.g. `omop1k`) and then views created in each relevant project schema.

### Source data

Some sample synthetic datasets (e.g. omop 100k, Lung Cancer 10k) are available from the UoN Centre for Health Informatics.

Note that `omop-lite` requires TSV files, with UPPERCASE table names and a `.csv` extension (Athena style).

## Samples

### `postgres-omop-lite.compose.yml`

`docker compose up -d` will run only the postgres database, which has its data persisted to a volume.
The Postgres server can be mapped to a non-standard port to keep it out of the way of other postgres servers run on this host.

`omop-lite` is under its own profile, so it doesn't run by default.

Recommended usage is:

1. ensure data source files are present in the expected directory
    - or configure loading built-in synthetic data
2. ensure the pg server is running (`docker compose up -d`)
3. Run `omop-lite` in the context of the same compose project:
    - `docker compose -f postgres-omop-lite.compose.yml run --rm omop-lite`

This works because `omop-lite` is defined on the `init` profile.

This allows `omop-lite` to be run on demand instead of with every `docker compose up`.

It will clean up the `omop-lite` container when complete because of the `--rm` flag.

### `omop-lite-only.compose.yml`

`docker compose -f omop-lite-only.compose.yml run --rm omop-lite` will run `omop-lite`.

Recommended usage is:

1. ensure data source files are present in the expected directory
    - or configure loading built-in synthetic data
2. ensure the pg server is accessible
3. Run `omop-lite` in the context of the same compose project:
    - `docker compose -f omop-lite.compose.yml run --rm omop-lite`

It will clean up the `omop-lite` container when complete because of the `--rm` flag.

## Scripts

Some helpful SQL scripts are provided for managing the loaded data (in particular setting up views of OMOP tables so that Projects can access the loaded datasets).