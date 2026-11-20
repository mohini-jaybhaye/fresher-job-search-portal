# Fresher & Internship Job Search Portal

A searchable job board for fresher and internship opportunities, built using a SQL-based data cleaning and deduplication workflow, LLM-assisted role and city standardization, and a live Google Sheets CSV feed.

## Architecture & Workflow

1. **Data Collection:** Generated a structured dataset of fresher and internship job listings in CSV format using ChatGPT and Claude AI with predefined prompts.

2. **Data Cleaning & Deduplication:** Performed initial formatting, column standardization, and basic cleaning in Google Sheets. Imported the dataset into Microsoft SQL Server and removed duplicate job records using CTEs and `ROW_NUMBER()`.

3. **LLM-Based Tagging & Manual Audit:** Exported unique job records to Google Sheets and processed them in batches of 50 using ChatGPT to standardize job roles and city names. Manually audited all 246 records against the original job descriptions using Google Sheets (`COUNTIF` and `COUNTA`), achieving **97.97% tagging accuracy**.

4. **Final Dataset Integration:** Used SQL `JOIN` to combine unique job records with LLM-tagged records and created the final dataset containing the required columns for the web application.

5. **Frontend Development & Deployment:** Published the final Google Sheet tab as a CSV feed, integrated it into a searchable HTML/CSS/JavaScript job portal using Gemini AI, and deployed the application on Netlify.

6. **Documentation & Cost Analysis:** Documented the datasets, SQL workflow, AI prompts, tagging audit, actual project expenditure, and estimated production cost in Google Sheets.

## Key Project Metrics

| Metric | Result |
|---|---|
| Records manually audited | 246 |
| LLM tagging accuracy | 97.97% |
| Actual project cost | $0.00 (₹0) |
| Estimated cost per 1,000 posts | ~$0.03–$0.11 (₹3–₹10) |

*Estimated production cost is based on an assumed processing volume of approximately 180K tokens. It is an indicative estimate, not an actual paid API expense.*

## Tools & Technologies

- **Data Collection:** ChatGPT, Claude AI
- **Data Cleaning:** Google Sheets
- **Database:** Microsoft SQL Server
- **SQL Concepts:** CTE, `ROW_NUMBER()`, `JOIN`
- **AI-Based Classification:** ChatGPT
- **Frontend:** HTML, CSS, JavaScript, PapaParse
- **Deployment:** Netlify
- **Data Integration:** Google Sheets Published CSV

## Repository Contents

- `index.html` – Searchable job portal connected to the published Google Sheets CSV feed.
- `sql_queries.sql` – SQL Server queries for job deduplication and final dataset integration.
- `README.md` – Project overview, workflow, technologies, and documentation.

## Project Links

- **Live Web Application:** [https://launchpad-jobs.netlify.app/]
- **Google Sheets Documentation:** [Add Google Sheets URL]
- **Loom Project Walkthrough:** [Add Loom URL]

## Project Highlights

- Implemented SQL-based duplicate detection and removal.
- Applied LLM-assisted classification to standardize inconsistent job roles and city names.
- Conducted manual validation to measure classification accuracy.
- Integrated a published Google Sheets CSV feed with a searchable frontend application.
- Documented actual project costs and estimated processing costs at scale.
