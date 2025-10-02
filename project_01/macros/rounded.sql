{%  macro rounded(col, decimal_places=1) %}
    round({{ col }}, {{ decimal_places }})
{% endmacro %}