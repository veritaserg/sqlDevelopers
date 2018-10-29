SELECT comp.companies,comp.customers,MIN(comp.cost)
  FROM
  (SELECT total.companies companies ,total.customers customers,cost
FROM (SELECT companies.NAME companies,customers.NAME customers,sum(projects.COST)  cost
FROM projects
INNER JOIN customers_projects ON projects.PROJECT_ID = customers_projects.PROJECT_ID
  INNER JOIN customers ON customers_projects.CUSTOMER_ID = customers.CUSTOMER_ID
  INNER JOIN companies_projects ON companies_projects.PROJECT_ID = customers_projects.PROJECT_ID
  INNER JOIN companies ON companies_projects.COMPANIE_ID = companies.COMPANIE_ID
  GROUP BY customers.NAME ,companies.NAME) as total
GROUP BY companies) as comp;