

--Duplicate detection query
with cte as ( select *,ROW_NUMBER() over (partition by Company_Name,Job_Title,Location order by Job_ID)as row_no from cleaned_job_dataset)
select* from cte where row_no>1;

--Remove duplicate jobs
with cte as ( select *,ROW_NUMBER() over (partition by Company_Name,Job_Title,Location order by Job_ID)as row_no from cleaned_job_dataset)
select* INTO final_unique_jobs from cte where row_no=1;

--created final job info.data
select j.Job_ID,j.Company_Name,t.Standardized_Role,t.Standardized_City,j.Job_URL as Apply_Link into Final_Job_Data
from final_unique_jobs j inner join [LLM tagging] t on j.Job_ID=t.Job_ID order by j.Job_ID;