SELECT total.name , max(total.sallary) as max_sallary
FROM (SELECT projects.NAME name,  sum(developers.SALLARY) sallary
FROM developers
  INNER JOIN
  projects_developers ON developers.DEVELOPER_ID=projects_developers.developer_id
  INNER JOIN
  projects ON projects_developers.PROJECT_ID = projects.PROJECT_ID
GROUP BY projects.Name) as total;