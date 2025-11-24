CREATE OR REPLACE PROCEDURE generate_monthly_report AS
BEGIN
    FOR rec IN (
        SELECT
            TO_CHAR(sale_date, 'YYYY-MM') AS month,
            SUM(quantity * price) AS revenue
        FROM sales
        GROUP BY TO_CHAR(sale_date, 'YYYY-MM')
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Month: ' || rec.month || ' | Revenue: ' || rec.revenue);
    END LOOP;
END;
/
