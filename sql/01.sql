/*
 * Display the first and last name of each actor in a single column in upper case letters.
 * Name the column Actor Name, and sort the results alphabetically.
 */

SELECT first_name || ' ' || last_name as "Actor Name"
from actor
Order by "Actor Name";

