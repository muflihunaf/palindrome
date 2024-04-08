SELECT
    o.customerNumber,
    COUNT(od.productCode) AS total_orders
FROM
    orders o
JOIN
    orderdetails od ON o.orderNumber = od.orderNumber
JOIN
    products p ON od.productCode = p.productCode
WHERE
    p.productLine = 'Classic Cars'
GROUP BY
    o.customerNumber
HAVING
    total_orders > 23;
