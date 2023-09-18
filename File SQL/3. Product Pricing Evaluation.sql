SELECT
    p.productCode,
    p.productName,
    p.buyPrice,
    SUM(od.quantityOrdered) AS totalOrdered
FROM
    mintclassics.products AS p
LEFT JOIN
    mintclassics.orderdetails AS od ON p.productCode = od.productCode
GROUP BY
    p.productCode, p.productName, p.buyPrice
order by
	buyPrice desc
