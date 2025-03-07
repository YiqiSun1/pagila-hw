/*
 * List last names of actors and the number of actors who have that last name,
 * but only for names that are shared by at least two actors
 */

SELECT last_name, COUNT(*) AS "last_name_count"
FROM actor
group by last_name
HAVING COUNT(*) > 1
ORDER by last_name_count DESC
