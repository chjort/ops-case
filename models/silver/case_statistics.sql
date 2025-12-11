select
    country_region,
    date,
    cases,
    deaths,
    deaths / cases as cfr
from  {{ ref('stg_cases') }}
where cases > 0