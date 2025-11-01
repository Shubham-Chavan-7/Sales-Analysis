--- Display --> Customer Name, Ship Mode, Sales for SHIP MODE = Standard Class----



SELECT [Customer Name], [Ship Mode], Sales
FROM Orders$
WHERE [ship mode] = 'standard class'


--- Total Profit by Region ---

Select Region, sum(profit) AS TOTAL_PROFIT  from Orders$
group by Region

--- Remove orders with quantity less than 5 ---
DELETE FROM Orders$
WHERE Quantity > 5

--- Query to find duplicate order_ID Count
SELECT [Order ID], Count(*) AS Duplicate_Count FROM Orders$
Group By [Order ID]
Having Count (*) > 1
SELECT * FROM Orders$