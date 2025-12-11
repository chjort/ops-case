select *
from {{ ref('stg_cases') }}
where country_code is not null