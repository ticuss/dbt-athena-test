{{ config(
    materialized='view'
) }}

with summary as (
    select
        target,
        {{ iris_statistics('sepal_length') }},
        {{ iris_extended_statistics('sepal_length') }},
        {{ iris_statistics('sepal_width') }},
        {{ iris_extended_statistics('sepal_width') }},
        {{ iris_statistics('petal_length') }},
        {{ iris_extended_statistics('petal_length') }},
        {{ iris_statistics('petal_width') }},
        {{ iris_extended_statistics('petal_width') }}
    from {{ ref('iris') }}
    group by target
)

select *
from summary
order by target;
