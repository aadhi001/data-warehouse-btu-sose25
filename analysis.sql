
-- Too check the assigned branch and the tables in the assigned branch

SELECT table_name FROM all_tables WHERE owner = 'DWT_BRANCH_1';
SELECT table_name FROM all_tables WHERE owner = 'DWT_BRANCH_2';
SELECT table_name FROM all_tables WHERE owner = 'DWT_BRANCH_5';


-- To recreate the DDL Statement/ Create Statement

-- Too check the attribute properties of each table (We changed the table name and the owner name to test for every branch and tables)
SELECT column_name, data_type, data_length, data_precision, data_scale, nullable
FROM all_tab_columns
WHERE table_name = 'ORDER'
AND owner = 'DWT_BRANCH_1';

-- Too check the constratint properties of each table
SELECT ac.constraint_name, ac.constraint_type, ac.search_condition, acc.column_name
FROM all_constraints ac
JOIN all_cons_columns acc ON ac.constraint_name = acc.constraint_name AND ac.owner = acc.owner
WHERE ac.table_name = 'ORDER'
AND ac.owner = 'DWT_BRANCH_1'
ORDER BY ac.constraint_name, acc.position;