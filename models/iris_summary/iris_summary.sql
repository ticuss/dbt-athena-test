select
    {{ iris_statistics("sepal_length") }},
    {{ iris_statistics("sepal_width") }},
    {{ iris_statistics("petal_length") }},
    {{ iris_statistics("petal_width") }},
    target


from {{ ref("iris") }}
group by target
