{%  macro truncate_string(str_col, len=10) %}
    substr({{ str_col }}, 1, {{ len }})
{% endmacro %}