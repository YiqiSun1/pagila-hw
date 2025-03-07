/*
 * Use a JOIN to count the number films in each category in the specified language.
 * Use table category, film_category, film, and language.
 */
CREATE OR REPLACE FUNCTION category_counts_by_language(TEXT) RETURNS TABLE(name TEXT, count BIGINT) AS
$$
    SELECT c.name, COUNT(c.name)
    FROM category AS c
    JOIN film_category AS fc ON c.category_id = fc.category_id
    JOIN film AS f ON fc.film_id = f.film_id
    JOIN language AS l ON f.language_id = l.language_id
    WHERE l.name = $1
    GROUP BY c.name
-- FIXME: implementation goes here
$$
LANGUAGE SQL
IMMUTABLE
RETURNS NULL ON NULL INPUT;

SELECT * FROM category_counts_by_language('English');
SELECT * FROM category_counts_by_language('Italian');
SELECT * FROM category_counts_by_language('Japanese');
SELECT * FROM category_counts_by_language('Mandarin');
SELECT * FROM category_counts_by_language('French');
SELECT * FROM category_counts_by_language('German');
SELECT * FROM category_counts_by_language('Latin');
