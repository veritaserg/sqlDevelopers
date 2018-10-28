CREATE DATABASE dbDevelopers;

CREATE TABLE developers(
   DEVELOPER_ID   INT               NOT NULL,
   NAME VARCHAR (100)     NOT NULL,
   EXPERIENCE  INT        NOT NULL,
  PRIMARY KEY (DEVELOPER_ID)
);

CREATE TABLE skills (
SKILL_ID INT NOT NULL ,
SPECIALTY VARCHAR (100) NOT NULL ,
PRIMARY KEY (SKILL_ID)
);

CREATE TABLE projects(
PROJECT_ID INT NOT NULL ,
NAME VARCHAR (100) NOT NULL ,
PRIMARY KEY (PROJECT_ID)
);

CREATE TABLE companies (
COMPANIE_ID INT NOT NULL ,
NAME VARCHAR (100) NOT NULL ,
PRIMARY KEY (COMPANIE_ID)
);

CREATE TABLE customers (
CUSTOMER_ID INT NOT NULL ,
NAME VARCHAR (100) NOT NULL,
PRIMARY KEY (CUSTOMER_ID)
);

CREATE TABLE developers_skills (
DEVELOPER_ID INT NOT NULL ,
SKILL_ID INT NOT NULL ,
 PRIMARY KEY (DEVELOPER_ID,SKILL_ID),
FOREIGN KEY (DEVELOPER_ID)  REFERENCES developers,
FOREIGN KEY (SKILL_ID) REFERENCES skills
);

CREATE TABLE projects_developers (
PROJECT_ID INT NOT NULL ,
DEVELOPER_ID INT NOT NULL ,
 PRIMARY KEY (PROJECT_ID,DEVELOPER_ID),
 FOREIGN KEY (PROJECT_ID) REFERENCES projects,
FOREIGN KEY (DEVELOPER_ID)  REFERENCES developers
);

CREATE TABLE companies_projects(
COMPANIE_ID INT NOT NULL ,
PROJECT_ID INT NOT NULL ,
PRIMARY KEY (COMPANIE_ID ,PROJECT_ID),
FOREIGN KEY (COMPANIE_ID)  REFERENCES companies,
FOREIGN KEY (PROJECT_ID) REFERENCES projects
);

CREATE TABLE customers_projects(
CUSTOMER_ID INT NOT NULL ,
PROJECT_ID INT NOT NULL ,
PRIMARY KEY (CUSTOMER_ID ,PROJECT_ID),
FOREIGN KEY (CUSTOMER_ID)  REFERENCES companies,
FOREIGN KEY (PROJECT_ID) REFERENCES projects
);



