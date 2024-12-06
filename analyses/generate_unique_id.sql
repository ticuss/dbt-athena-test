WITH summary AS (
    SELECT
        target,
        {{ iris_statistics('sepal_length') }},
        {{ iris_extended_statistics('sepal_length') }},
        {{ iris_statistics('sepal_width') }},
        {{ iris_extended_statistics('sepal_width') }},
        {{ iris_statistics('petal_length') }},
        {{ iris_extended_statistics('petal_length') }},
        {{ iris_statistics('petal_width') }},
        {{ iris_extended_statistics('petal_width') }}
    FROM {{ ref('iris') }}
    WHERE target = 'Iris-setosa'
    GROUP BY target
)

SELECT *
FROM summary
ORDER BY target;
