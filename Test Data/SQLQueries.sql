select * from _Products
select * from _Order
select * from _Customers

Select max(O.Price) as Price From _Customers C Inner Join _Order O
On C.CustID = O.CustomerID
Where  O.Price < (select max(Price) from _Order)
select * from _Order order by Price desc
SELECT * /*This is the outer query part */
	FROM _Order Or1
	WHERE (3-1) = ( /* Subquery starts here */
					SELECT Or1.Price, Or2.Price, COUNT(DISTINCT(Or2.Price))
					FROM _Order Or2, _Order Or1
					WHERE Or2.Price > Or1.Price)


SELECT o1.OrderId, o1.Price/100, o2.OrderID, o2.Price/100
FROM _Order o1 inner join _Order o2
on o1.Price > o2.Price 




SELECT _Order.OrderID, _Products.ProductID, _Products.Name, _Products.UnitPrice, _Order.Quantity, _Order.Price
FROM _Products INNER JOIN _Order 
ON _Products.ProductID = _Order.ProductID ORDER BY _Order.OrderID

SELECT _Order.OrderID, _Products.ProductID, _Products.Name, _Products.UnitPrice, _Order.Quantity, _Order.Price
FROM _Products LEFT JOIN _Order
ON _Products.ProductID = _Order.ProductID ORDER BY _Order.OrderID

SELECT _Order.OrderID, _Products.ProductID, _Products.Name, _Products.UnitPrice, _Order.Quantity, _Order.Price
FROM _Products RIGHT JOIN _Order 
ON _Products.ProductID = _Order.ProductID ORDER BY _Order.OrderID

SELECT _Order.OrderID, _Products.ProductID, _Products.Name, _Products.UnitPrice, _Order.Quantity, _Order.Price
FROM _Products FULL OUTER JOIN _Order 
ON _Products.ProductID = _Order.ProductID ORDER BY _Order.OrderID


--CREATE FUNCTION ProductsCostingMoreThan(@cost money)  
--RETURNS TABLE  
--AS  
--RETURN  
--    SELECT ProductID, UnitPrice  
--    FROM _Products  
--    WHERE UnitPrice > @cost

--CREATE FUNCTION ReverseCustName(@string varchar(100))  
--RETURNS varchar(100)  
--AS  
--BEGIN  
--    DECLARE @custName varchar(100)  
--    -- Implementation left as exercise for users.  
--    RETURN @custName  
--END

SELECT p2.Name, p1.UnitPrice  
FROM dbo.ProductsCostingMoreThan(10000) AS p1 INNER JOIN _Products AS p2 
ON p1.ProductID = p2.ProductID

SELECT ProductId, UnitPrice  
FROM dbo.ProductsCostingMoreThan(10000)

SELECT ReverseCustName(Name) from _Customer 
select MAX(Price) from _Order


 -- Define the CTE expression name and column list.  
WITH Order_CTE (OrderID, ProductID, ContactNo)  
AS  
-- Define the CTE query.  
(  
    SELECT OrderID, ProductID, ContactNo
    FROM _Order  
    WHERE ContactNo IS NOT NULL  
)  
-- Define the outer query referencing the CTE name.  
SELECT OrderID, COUNT(ProductID) AS TotalProducts, ContactNo  
FROM Order_CTE  
GROUP BY OrderID, ProductID, ContactNo  
ORDER BY OrderID, ProductID;  
GO





DECLARE @Sample TABLE 
( 
	Id INT, 
	[name] NVARCHAR(255), 
	city NVARCHAR(255)
);

INSERT INTO @Sample VALUES
	(1, 'amit', 'delhi'),
	(1, 'amit', 'delhi'),
	(1, 'amit', 'delhi'),
	(2, 'Ali', 'mumbai');
	
SELECT	* FROM	@Sample;

WITH Ordered AS 
(
	SELECT	*, ROW_NUMBER() OVER ( PARTITION BY Id ORDER BY Id) AS RN
	FROM @Sample
)
	DELETE FROM Ordered
	WHERE RN > 1;
	
SELECT	* 
FROM	@Sample;