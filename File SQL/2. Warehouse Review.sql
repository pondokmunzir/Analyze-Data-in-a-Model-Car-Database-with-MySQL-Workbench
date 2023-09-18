SELECT 
    w.warehouseCode, 
    w.warehouseName, 
    SUM(p.quantityInStock) AS totalInventory
FROM 
    mintclassics.warehouses AS w
LEFT JOIN 
    mintclassics.products AS p ON w.warehouseCode = p.warehouseCode
GROUP BY 
    w.warehouseCode, 
    w.warehouseName
order by 
	totalInventory desc