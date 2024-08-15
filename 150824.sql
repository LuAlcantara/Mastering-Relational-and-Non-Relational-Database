set SERVEROUTPUT on;

DECLARE

    v_nome varchar2(30);
    v_idade NUMBER := 28;

BEGIN

    v_nome := 'Lucas';
    dbms_output.put_line('Nome: ' || v_nome || ' - Idade: ' || v_idade);

END;



set SERVEROUTPUT on;

DECLARE

    v_number1 NUMBER := 10;
    v_number2 NUMBER := 8;

BEGIN
    dbms_output.put_line(v_number1 / v_number2);
END;



set SERVEROUTPUT on;

DECLARE

    v_salario1 NUMBER := 1412;
    v_porc NUMBER := 0.25;

BEGIN
    dbms_output.put_line('O valor do novo salário é: ' || (v_salario1 * 1.25));
END;