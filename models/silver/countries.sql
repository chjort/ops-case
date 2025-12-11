with ranked_country_population as (
    select
        *,
        row_number() over (
            partition by country_code  -- group by the column that defines duplicates
            order by total_population desc  -- order within the group to place the max value first
        ) as rn
    from {{ ref('stg_countries') }}
)

select
    *
from
    ranked_country_population
where
    rn = 1
