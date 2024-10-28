{% macro iris_extended_statistics(column_name) %}
    COUNT({{ column_name }}) AS count_{{ column_name }},
    STDDEV_POP({{ column_name }}) AS stddev_{{ column_name }}
{% endmacro %}
