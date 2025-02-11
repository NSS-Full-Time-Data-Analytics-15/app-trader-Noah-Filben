-- Assumption 1

SELECT DISTINCT asa.name, asa.price, 
	CASE 
		WHEN (asa.price * 10000) < 25000 THEN 25000
		ELSE (asa.price * 10000)
		END AS purchase_cost
FROM app_store_apps AS asa
LEFT JOIN play_store_apps AS psa
USING (name);

--Assumption 2

SELECT name, 5000 AS monthly_ad_revenue
FROM app_store_apps;

-- Assumption 3

SELECT name, 1000 AS monthly_marketing_cost
FROM app_store_apps;

-- Assumption 4

SELECT name, rating, 1 + ROUND((rating * 2),0) AS lifespan
FROM app_store_apps

	