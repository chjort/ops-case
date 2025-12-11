select 
    country_region,
    sum(cases) as cases,
    sum(deaths) as deaths,
    sum(deaths) / sum(cases) as fatality_rate
from {{ ref('case_statistics') }}
group by country_region