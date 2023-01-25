select h.hacker_id, h.name from hackers as h
    inner join submissions as s on
    h.hacker_id = s.hacker_id
        inner join challenges as c on
        s.challenge_id = c.challenge_id
            inner join difficulty as d on
            c.difficulty_level = d.difficulty_level 
                where s.score = d.score
                group by h.name, h.hacker_id
                having count(s.submission_id) > 1
                order by count(s.submission_id) desc, h.hacker_id asc
