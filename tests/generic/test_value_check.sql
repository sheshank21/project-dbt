{% test value_check(model, column_name)%}

SELECT * FROM
{{model}}
WHERE {{column_name}} < 0 
or {{column_name}} is null

{% endtest%}