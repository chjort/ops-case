{{ config(materialized='ephemeral') }}

select
    country_region,
    sum(cases) as cases,
    sum(deaths) as deaths,
from {{ ref('cases') }}
group by country_region