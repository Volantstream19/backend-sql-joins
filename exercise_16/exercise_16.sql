-- return the title, description, release year and list of actors returned as a JSON blob
-- for the movie Airplane Sierra
SELECT
    film.title,
    film.description,
    film.release_year actor
FROM
    film
    JOIN film_actor ON film.film_id = film_actor.film_id
    JOIN actor on film_actor.actor_id = actor.actor_id
WHERE
    film.title = 'Airplane Sierra';