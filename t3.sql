USE sql_store;
SELECT *
FROM shippers sh
CROSS JOIN products p
ORDER BY sh.shipper_id