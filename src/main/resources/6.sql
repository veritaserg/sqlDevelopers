SELECT projects.NAME, avg(developers.SALLARY) AS avg_salary
FROM developers
  INNER JOIN
  projects_developers ON developers.DEVELOPER_ID=projects_developers.developer_id
  INNER JOIN
  projects ON projects.PROJECT_ID = projects.PROJECT_ID
WHERE projects.cost= (SELECT min(cost) FROM projects)