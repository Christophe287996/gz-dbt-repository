{% macro create_margin_percent(revenue, margin, precision=2) %}
     ROUND(SAFE_DIVIDE({{margin}},{{revenue}}),{{precision}})
 {% endmacro %}