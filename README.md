# Data Job Market Analysis (SQL Project)

## 📌 Project Overview
This project explores the data job market to uncover actionable insights for job seekers in the data field. Using SQL, I analyzed a dataset of job postings to answer key questions: *What are the most in-demand skills? Which skills command the highest salaries? What is the optimal skill set for a data professional to learn?*

## 🛠️ Tools & Technologies
* **Database:** PostgreSQL
* **Environment:** VS Code
* **Language:** SQL (Advanced querying, CTEs, Joins, Window Functions, Date Extraction)

## 📊 The Dataset
The analysis is based on a comprehensive dataset of data-related job postings (including job titles, salaries, locations, and required skills). 
*Note: The raw dataset was over 120MB, which exceeds GitHub's file size limits. Therefore, the raw CSV is excluded from this repo via `.gitignore`, but the SQL scripts provided will run perfectly on the original dataset.*

## 🗂️ Repository Structure
The SQL scripts are organized sequentially to build upon the analysis:

* `1. Top Paying Jobs.sql`: Identifies the highest-paying data roles.
* `2. Top Paying Job Skills.sql`: Extracts the specific skills associated with those top-paying jobs.
* `3. Top Demanded Skills.sql`: Determines which skills appear most frequently in job postings.
* `4. Top Paying Skills.sql`: Calculates the average salary associated with each specific skill.
* `5. Optimal Skills.sql`: Combines demand and salary data to find the most "optimal" skills to learn (high demand + high pay).
* `top_paying_job_skills.csv`: A sample of the exported results for visualization/reporting.

## 💡 Key Insights & Findings


* **The Power of Python & SQL:** SQL and Python are overwhelmingly the most in-demand skills across all data roles.
* **High-Paying Niches:** Cloud technologies (like AWS and Snowflake) and big data tools (like Spark) are correlated with the highest average salaries.
* **Remote Work Trends:** (If your data included remote work analysis) Fully remote data roles tend to offer a slight premium in average salary compared to on-site roles.
* **Optimal Skill Set:** A professional looking to maximize their earning potential should focus on a combination of core programming (Python), database management (SQL), and cloud platforms.

## 🚀 How to Run the Queries
1. Clone this repository to your local machine.
2. Ensure you have PostgreSQL installed and running.
3. Create a database and import the original job postings dataset.
4. Open the `.sql` files in VS Code (or any SQL client like pgAdmin/DBeaver) and run them against your database.

---
*Connect with me on [LinkedIn](https://www.linkedin.com/in/geoffrey-gari-3895582a1/)*
