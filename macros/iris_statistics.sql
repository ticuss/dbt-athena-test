{% macro iris_statistics(column_name) %}
    AVG({{ column_name }}) AS avg_{{ column_name }},
    MIN({{ column_name }}) AS min_{{ column_name }},
    MAX({{ column_name }}) AS max_{{ column_name }}
{% endmacro %}
