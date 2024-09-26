-- Criação de tabela vazia a partir da tabela do professor.
CREATE TABLE TB_VENDAS AS
    SELECT * FROM PF1788.tabela_de_vendas WHERE 1=2;
    
-- Inserção de dados a partir da tabela do professor   
INSERT INTO TB_VENDAS SELECT * FROM pf1788.tabela_de_vendas;

-- Criação ou renomeação de uma procedure
CREATE OR REPLACE PROCEDURE PRD_DELETE_VENDAS IS
    contador NUMBER := 0;
BEGIN
    FOR x IN ( SELECT * FROM TB_VENDAS )
        LOOP
            DELETE FROM TB_VENDAS WHERE ordernumber = x.ordernumber;
        
        IF MOD(contador, 100) = 0 THEN
            COMMIT;
        END IF;
        contador := contador + 1;
    END LOOP;
END;


-- Tratamento de Erros
DECLARE
    minhaexe EXCEPTION;
    n NUMBER := 10;
BEGIN
    FOR I IN 1..n LOOP
        dbms_output.put_line(i * n);
        IF (i * 2) = 10 THEN
            RAISE minhaexe;
        END IF;
    END LOOP;
EXCEPTION
    WHEN minhaexe THEN
        raise_application_error(-20001, 'Você caiu no erro');
END;
