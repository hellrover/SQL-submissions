SELECT candidate_id
FROM candidates
GROUP BY candidate_id
having sum(case when skill ='Python' then 1
            when skill = 'Tableau' then 1
            when skill = 'PostgreSQL' then 1
            else 0
           end
          )=3