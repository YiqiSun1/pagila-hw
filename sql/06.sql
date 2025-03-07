/*
 * List the last names of actors, as well as how many actors have that last name.
 * HINT:
 * Use the count() aggregation function and group by the actor's last name.
 */

SELECT last_name, COUNT(*) AS "last_name_count"
FROM actor
group by last_name
ORDER by last_name_count DESC 
