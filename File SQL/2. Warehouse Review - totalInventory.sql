SELECT
    p.productName,
    w.warehouseName,
    SUM(p.quantityInStock) AS totalInventory
FROM
    mintclassics.products AS p
JOIN
    mintclassics.warehouses AS w ON p.warehouseCode = w.warehouseCode
GROUP BY
    p.productName, w.warehouseName
ORDER BY
    totalInventory asc