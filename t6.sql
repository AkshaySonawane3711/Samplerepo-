CREATE TABLE  invoices_archieved AS
SELECT 
		i.number,
        c.name,
        i.invoice_total,
        i.payment_total,
        i.invoice_date,
        i.due_date        
FROM invoices i
JOIN clients c
	USING (client_id)
WHERE payment_date IS NOT NULL