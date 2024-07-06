WITH cte AS(
SELECT s.challenge_id,h.HACKER_ID,
h.`NAME`,MAX(s.score) mx
FROM hackers h join submissions s
ON h.HACKER_ID = s.hacker_id
GROUP BY s.challenge_id,h.HACKER_ID,h.`NAME`)

SELECT cte.HACKER_ID,cte.`NAME`,SUM(cte.mx) smx
FROM cte
GROUP BY cte.HACKER_ID,cte.`NAME`
HAVING smx > 0
ORDER BY smx DESC, cte.HACKER_ID asc
