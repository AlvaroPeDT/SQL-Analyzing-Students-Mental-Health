/* Explore and analyze the students data to see how the length of stay (stay) impacts the average mental health diagnostic scores of the international students present in the study. */
SELECT 
		stay,
		COUNT(inter_dom) AS count_int,
		ROUND(AVG(todep),2) AS average_phq, --PHQ-9 test
		ROUND(AVG(tosc),2)  AS average_scs, --SCS test
		ROUND(AVG(toas),2)  AS average_as   --ASISS test
FROM students
WHERE inter_dom='Inter'
GROUP BY stay
HAVING stay IS NOT NULL
ORDER BY stay DESC
LIMIT 9;
