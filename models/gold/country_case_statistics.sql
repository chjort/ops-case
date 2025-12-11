with total_country_cases as (

    select * from {{ ref('total_country_cases') }}

)

select
    countries.country_region,
    countries.total_population,
    total_country_cases.cases,
    total_country_cases.deaths,
    total_country_cases.deaths / total_country_cases.cases as fatality_rate,
    total_country_cases.cases / countries.total_population as cases_per_capita
from {{ ref('countries') }}
left join total_country_cases using (country_region)
where total_country_cases.cases > 0