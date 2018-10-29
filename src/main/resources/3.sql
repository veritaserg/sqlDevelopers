SELECT SUM(SALLARY)
FROM developers
  INNER JOIN developers_skills ON developers.DEVELOPER_ID = developers_skills.DEVELOPER_ID
INNER JOIN skills ON skills.SKILL_ID = developers_skills.SKILL_ID
WHERE skills.NAME = (SELECT NAME FROM skills WHERE NAME LIKE 'Java');