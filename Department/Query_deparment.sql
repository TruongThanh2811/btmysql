USE  btvtidepartment;
-- union 
-- 1
SELECT AC.full_name 
FROM accounts AS AC
JOIN groupaccount AS GA ON AC.account_id = GA.account_id
WHERE GA.group_id = 1;
-- 2
SELECT AC.full_name 
FROM accounts AS AC
JOIN groupaccount AS GA ON AC.account_id = GA.account_id
WHERE GA.group_id = 2;
-- 3
SELECT AC.full_name 
FROM accounts AS AC
JOIN groupaccount AS GA ON AC.account_id = GA.account_id
WHERE GA.group_id = 1;
UNION
SELECT AC.full_name 
FROM accounts AS AC
JOIN groupaccount AS GA ON AC.account_id = GA.account_id
WHERE GA.group_id = 2;
-- 4
SELECT GR.group_name, COUNT(GA.group_id) AS SL
FROM groupaccount AS GA
JOIN groupdp AS GR ON GA.group_id = GR.group_id
GROUP BY GR.group_id
HAVING COUNT(GA.group_id) >= 5;
-- 5
SELECT GR.group_name, COUNT(GA.group_id) AS SL
FROM groupaccount AS GA
JOIN groupdp AS GR ON GA.group_id = GR.group_id
GROUP BY GR.group_id
HAVING COUNT(GA.group_id) <=7;

SELECT GR.group_name, COUNT(GA.group_id) AS SL
FROM groupaccount AS GA
JOIN groupdp AS GR ON GA.group_id = GR.group_id
GROUP BY GR.group_id
HAVING COUNT(GA.group_id) >= 5;
UNION
SELECT GR.group_name, COUNT(GA.group_id) AS SL
FROM groupaccount AS GA
JOIN groupdp AS GR ON GA.group_id = GR.group_id
GROUP BY GR.group_id
HAVING COUNT(GA.group_id) <=7;