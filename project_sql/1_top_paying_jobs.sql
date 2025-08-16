SELECT
    j.job_id,
    j.job_title,
    j.job_location,
    j.job_schedule_type,
    j.salary_year_avg,
    j.job_posted_date,
    c.name AS company
FROM
    job_postings_fact AS j
    LEFT JOIN company_dim AS c
        ON c.company_id = j.company_id
WHERE   
    job_location = 'Anywhere'
    AND job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
ORDER BY    
    salary_year_avg DESC
LIMIT 10