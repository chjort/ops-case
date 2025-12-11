select
    iso3166_1 as country_code,
    country_region,
    total_population
from {{ source('source_covid19', 'databank_demographics') }}