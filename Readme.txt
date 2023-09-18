Title: Data Analysis for Inventory Optimization at Mint Classics


Project Description:
This project aims to conduct data analysis in the context of the fictional company Mint Classics. I will be playing the role of a novice data analyst assisting the company in addressing inventory and storage facility-related issues. The problem at hand involves the decision to close one of the existing storage facilities.


Demonstrated Skills:
1. Data Analysis: I will use SQL to extract and analyze data from the Mint Classics relational database.
2. Business Understanding: I will grasp the database structure and Mint Classics' business processes to provide relevant solutions.
3. Decision-Making: I will formulate recommendations based on findings from data analysis.


Tools Used:
1. MySQL Workbench: This tool is utilized for importing the database, running SQL queries, and analyzing data.
2. GitHub: The project and reports will be uploaded to GitHub as part of the portfolio.


**Task 1 - Import Classic Car Model Database**
In this task, I will import the Mint Classics relational database using MySQL Workbench. This involves downloading an SQL file containing the script to create and populate the database, then importing this script into MySQL Workbench. After the import is completed, I will ensure that the database has been successfully imported.















**Task 2 - Understanding the Mint Classics Database and Its Business Processes**


I will delve into comprehending the Mint Classics database structure and how data is organized within each table. An Entity-Relationship Diagram (EER) will be employed to grasp the interrelationships among tables, and I will explore the table contents for a more profound understanding of the business data.





**Task 3 - Investigating Business Issues and Identifying Affected Tables**


I will investigate the business issue faced by Mint Classics, which is the plan to close one of its storage facilities. I will identify the relevant tables for this problem and utilize SQL queries to retrieve the necessary data. 
The questions to be addressed are:
Are there products with high inventory but low sales? How can we optimize the inventory of such products?





This query retrieves data from the "mintclassics.products" table and order details from the "mintclassics.orderdetails" table. It then groups the data by product code, product name, and the quantity of the product available in stock. Next, the query calculates the total quantity of the product ordered by combining data from both tables.


Subsequently, the query calculates the difference between the quantity of the product available in stock and the total quantity ordered, labeling this result as "inventoryShortage." Finally, the query selects only those products that have a shortage in stock (inventory shortage) with the condition that the difference must be greater than 0, and it sorts the results from largest to smallest based on the inventory shortage.


In other words, this query is used to find products with quantities less than what was ordered (inventory shortage) and sorts them by the extent of their shortages.







 Are all the warehouses currently in use still necessary? How can we review warehouses that have low or inactive inventory?

This query is used to retrieve the total inventory (totalInventory) of each product in each warehouse. The query performs a join between the "mintclassics.products" (products) table and the "mintclassics.warehouses" (warehouses) table based on the warehouse code (warehouseCode).


After the join, the data is grouped (GROUP BY) by product name (productName) and warehouse name (warehouseName). Then, the query calculates the total quantity of products available in stock (quantityInStock) for each combination of product and warehouse. The results of this calculation are stored in the "totalInventory" column.


The query's results are then sorted (ORDER BY) in ascending order (from smallest to largest) based on totalInventory, resulting in a list of product-warehouse combinations with the lowest total inventory at the top.


In other words, this query helps you see the total inventory of each product in each warehouse and sorts it from the smallest to the largest.








This query is intended to retrieve the total inventory data (totalInventory) for each warehouse in the "mintclassics.warehouses" table. The query performs a left join between the "mintclassics.warehouses" (warehouses) table and the "mintclassics.products" (products) table based on the warehouse code (warehouseCode).


After the join, the data is grouped (GROUP BY) by warehouse code (warehouseCode) and warehouse name (warehouseName). Then, the query calculates the total quantity of products available in stock (quantityInStock) for each warehouse. The results of this calculation are stored in the "totalInventory" column.


The query results are then sorted (ORDER BY) in descending order (from largest to smallest) based on totalInventory, resulting in a list of warehouses with the highest total inventory at the top.


In other words, this query helps you view the total inventory for each warehouse and sorts it from highest to lowest.





Is there a relationship between product prices and their sales levels? How can price adjustments impact sales?

This query aims to retrieve product data such as the product code (productCode), product name (productName), purchase price (buyPrice), and the total quantity ordered (totalOrdered). It operates on the "mintclassics.products" table (products) and the "mintclassics.orderdetails" table (order details).


The process begins with a LEFT JOIN between the "mintclassics.products" (products) table and the "mintclassics.orderdetails" (order details) table based on the product code (productCode). This allows us to combine product information with the associated order quantity information.


Next, the data is grouped (GROUP BY) by the product code (productCode), product name (productName), and purchase price (buyPrice). Using GROUP BY enables us to calculate the total quantity of products ordered (totalOrdered) for each product, along with its purchase price and other details.


The query results are sorted (ORDER BY) in descending order (from highest to lowest) based on the purchase price (buyPrice), resulting in a list of products sorted by the highest purchase price at the top.


In other words, this query helps you obtain a list of products with the highest purchase prices, accompanied by the total quantity of products ordered for each of these products.





Who are the customers contributing the most to sales? How can sales efforts be focused on these valuable customers?





This query aims to retrieve customer data, including customer number (customerNumber), customer name (customerName), and total sales (totalSales) made by each customer. It operates on the "mintclassics.customers" (customers) table and the "mintclassics.orders" (orders) table.


The process starts with a JOIN between the "mintclassics.customers" (customers) and "mintclassics.orders" (orders) tables based on the customer number (customerNumber). This allows us to combine customer information with related order information.


Next, the data is grouped (GROUP BY) by customer number (customerNumber) and customer name (customerName). Using GROUP BY enables us to calculate the total sales (totalSales) made by each customer.


The query results are sorted (ORDER BY) in descending order (from highest to lowest) based on total sales (totalSales), resulting in a list of customers sorted by the highest total sales at the top.


In other words, this query helps you obtain a list of customers with the highest total sales, along with the total sales amount conducted by each of these customers.







How can the performance of sales employees be evaluated using sales data?

This query is used to retrieve employee data (employees) with information such as employee number (employeeNumber), last name (lastName), first name (firstName), job title (jobTitle), and total sales (totalSales) associated with each employee. This query involves several tables, namely "mintclassics.employees" (employee table), "mintclassics.customers" (customer table), "mintclassics.orders" (order table), and "mintclassics.orderdetails" (order details).




The process begins with a LEFT JOIN between the "mintclassics.employees" (employee) table and the "mintclassics.customers" (customer) table based on the employee number (employeeNumber). This allows us to link employee information with customers who have the employee as their sales representative (salesRepEmployeeNumber).




Next, there is a LEFT JOIN between the "mintclassics.customers" (customer) table and the "mintclassics.orders" (order) table based on the customer number (customerNumber). This enables us to combine customer information with the orders they have placed.




Then, there is a LEFT JOIN between the "mintclassics.orders" (order) table and the "mintclassics.orderdetails" (order details) table based on the order number (orderNumber). This allows us to connect order information with order details such as product price (priceEach) and quantity ordered (quantityOrdered).




After all the JOINs are performed, the data is grouped (GROUP BY) based on employee number (employeeNumber), last name (lastName), first name (firstName), and job title (jobTitle). The use of GROUP BY allows us to calculate the total sales (totalSales) associated with each employee.




The query results are then sorted (ORDER BY) in descending order (from highest to lowest) based on total sales (totalSales), resulting in a list of employees with the highest total sales at the top.




In other words, this query helps you obtain a list of employees along with their job titles with the highest total sales, as well as the total sales amount associated with each employee.

How can customer payment trends be analyzed? What credit risks need to be considered, and how can cash flow be managed?

This query is used to retrieve customer data (customers) and payment information (payments) associated with each customer. The data retrieved includes customer number (customerNumber), customer name (customerName), payment date (paymentDate), and payment amount (paymentAmount).


The process begins by performing a LEFT JOIN between the "mintclassics.customers" table (customers) and the "mintclassics.payments" table (payments) based on the customer number (customerNumber). This allows us to combine customer information with payment data related to each customer.


The query results are sorted (ORDER BY) in descending order (from highest to lowest) based on the payment amount (paymentAmount). In other words, the data is displayed in order from the largest payment to the smallest.


By using this query, you can view a list of customers along with the dates and the largest payment amounts they have made. This helps you analyze customer payment trends and identify customers with the highest payment amounts.





How can the performance of various product lines be compared? Which products are the most successful, and which ones need improvement or removal?

This query is used to retrieve data about various product lines along with related information. The data includes the product line name (productLine), product line description (productLineDescription), total inventory (totalInventory), total sales (totalSales), total revenue (totalRevenue), and the percentage of sales to inventory (salesToInventoryPercentage).


The process begins by joining the "mintclassics.products" (products) table with the "mintclassics.productlines" (product lines) table using a LEFT JOIN based on the "productLine" column. This allows us to combine product information with the corresponding product line descriptions.


Next, the resulting JOINed table is linked with the "mintclassics.orderdetails" (order details) table based on the "productCode" column. This enables us to merge product data with relevant sales data.


The query results are grouped (GROUP BY) based on the "productLine" and "productLineDescription" columns. This means that the data is grouped by product lines and their descriptions.


Subsequently, the data is sorted (ORDER BY) in descending order (from highest to lowest) based on the sales-to-inventory percentage (salesToInventoryPercentage). This will produce a list of product lines with the highest sales percentage first.


By using this query, you can analyze the performance of various product lines, identify which product lines have the highest sales percentage, and gain insights into how each product line performs in terms of inventory and sales.







How can the company's credit policies be evaluated? Are there any customers with credit issues that need to be addressed?

This query is used to retrieve customer data (customers) and related information, including customer number (customerNumber), customer name (customerName), credit limit (creditLimit), total payments made (totalPayments), and the difference between total payments and the credit limit (creditLimitDifference).


The query process begins by joining the "mintclassics.customers" table (customer table) with the "mintclassics.payments" table (payment table) using a LEFT JOIN. This joining is done based on the customer number (customerNumber), so customer data will be linked to the corresponding payment data.


Next, the data is grouped (GROUP BY) based on customer number (customerNumber) and credit limit (creditLimit). This means the data will be grouped for each customer and their credit limit value.


Then, the HAVING clause is used to filter the query results. Only customer data with total payments (totalPayments) less than the credit limit (creditLimit) will be retrieved. This means only customers who have not paid their entire credit limit will be displayed.


Finally, the query results are sorted (ORDER BY) in ascending order (from smallest to largest) based on the difference between total payments and the credit limit (creditLimitDifference). This will produce a list of customers with the smallest differences first.


By using this query, you can identify customers who have payments less than their credit limits, evaluate credit risk that needs attention, and manage the company's cash flow.





**Task 4 - Formulating Recommendations to Address Business Issues**
In this task, I have conducted data analysis using SQL queries and formulated recommendations to address the inventory-related business problem. Here is the summary based on the questions posed:
1. **Inventory Optimization**: After analyzing the data, I found some products with high inventory but low sales. My recommendation is to reduce the inventory of these products. This can be achieved by either reducing the quantity ordered for these products or evaluating the actual demand for them. Reducing inventory will help in lowering storage costs and optimizing resource allocation.




2. **Warehouse Review**: Warehouse data indicates that there are warehouses with low or inactive inventory. I recommend conducting further reviews of these warehouses. Consider closing or consolidating inefficient or inactive warehouses. This will reduce warehouse rental costs and optimize inventory allocation.




3. **Product Pricing Evaluation**: The analysis of product prices reveals a relationship between price and sales performance. My recommendation is to carefully review product prices. Consider adjusting the prices of specific products with low sales. Price reductions can enhance the attractiveness of these products to customers and boost sales.




4. **Customer Analysis**: Customer data has helped identify valuable customers contributing significantly to sales. My recommendation is to focus sales efforts on these valuable customers. Provide special incentives to these customers and consider offering products that align with their preferences.




5. **Employee Performance Evaluation**: Sales employee data can be used to evaluate employee performance. I recommend looking into employees who have achieved or exceeded sales targets and rewarding them with incentives. Additionally, identify employees who may need improvement and provide necessary training or support.




6. **Payment Analysis**: Payment trends of customers have been analyzed, and I recommend monitoring payments regularly. Identify customers with poor payment trends and take follow-up actions to mitigate credit risks. Additionally, manage cash flow carefully to ensure optimal liquidity.




7. **Product Line Review**: The analysis has shown the performance of various product lines. Products with less success need further evaluation. Consider product improvements or, if necessary, discontinuation of inefficient products. This will help in enhancing the profitability of the product portfolio.




8. **Credit Policy Evaluation**: Lastly, I recommend conducting a thorough evaluation of the company's credit policies. Identify customers with credit issues and consider providing solutions or making changes in credit policies to reduce credit risk.




By following these recommendations and involving data analysis, the company can optimize its operations, improve profitability, and provide better customer service.




**Task 5 - Crafting Conclusions and Recommendations with SQL Support**




The final task is to compile conclusions about the analysis process, key findings, and the recommendations I have designed. I will explain the steps taken and why I made certain decisions. I will also include SQL queries that support my findings as part of the portfolio uploaded to GitHub.




By completing all these tasks, I have gained experience in data analysis and the use of SQL to address business problems. The results of my work will be integrated into my GitHub portfolio to showcase my data analysis and SQL skills to potential employers.
