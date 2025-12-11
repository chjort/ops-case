select
    iso3166_1 as country_code,
    country_region,
    cases,
    deaths,
    date
from {{ source('source_covid19', 'ecdc_global') }}