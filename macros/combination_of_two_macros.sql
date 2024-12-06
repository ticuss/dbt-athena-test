{% macro combination_of_two_macros(column_name) %}
        {{ iris_statistics(column_name) }},
        {{ iris_extended_statistics(column_name) }}
{% endmacro %}
