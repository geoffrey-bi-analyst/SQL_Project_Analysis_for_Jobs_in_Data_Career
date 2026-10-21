SELECT
    skills,
    ROUND (AVG(salary_year_avg), 0)
    AS avg_salary
FROM
    job_postings_fact
INNER JOIN
    skills_job_dim ON
    job_postings_fact.job_id = 
    skills_job_dim.job_id
INNER JOIN
    skills_dim ON
    skills_job_dim.skill_id = 
    skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = True
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT
    25;

/*
Trend 1: Big-data engineering commands
a premium. PySpark ranks first at $208,
172, substantially ahead of the next skill. 
Databricks ($141,907) and Scala ($124,903) 
reinforce the presence of distributed 
data-processing technologies.
Interpretation: Roles involving large datasets, 
distributed computing, and data pipelines 
may be associated with higher compensation.

Trend 2: Software engineering practices 
matter. Bitbucket ranks second at $189,
155, while GitLab ($154,500) and Jenkins
 ($125,436) also feature in the top 25.
Interpretation: Employers may value analysts 
who can use version control, collaborate 
with developers, automate workflows, and 
maintain reliable production systems.

Trend 3: Machine learning and advanced 
analytics are represented. DataRobot ($155,486), 
Pandas ($151,821), NumPy ($143,513), 
and scikit-learn ($125,781) appear on the list.
Interpretation: The highest-paying analyst 
positions may overlap with data science, 
predictive modeling, and advanced analytics.

Trend 4: Cloud and infrastructure knowledge 
appear alongside analytics. Google Cloud 
Platform ($122,500), Kubernetes ($132,500), 
Linux ($136,508), and Airflow ($126,103) 
feature in the list. Interpretation: 
Understanding how data systems are deployed, 
scheduled, and maintained can complement 
analytical skills.

Trend 5: Traditional BI is present, but 
less prominent in this ranking. MicroStrategy 
ranks 25th at $121,619, and PostgreSQL 
ranks 23rd at $123,879. Interpretation: 
The list's highest salary associations 
lean toward engineering-heavy and specialized 
technologies. This does not mean BI tools 
are less valuable overall; the ranking 
only shows skills associated with the 
supplied salary figures.