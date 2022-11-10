-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join
SELECT
    category.name
FROM
    category
    left join film_category on category.category_id = film_category.category_id
    left join film on film_category.film_id = film.film_id
    inner join inventory on film.film_id = inventory.film_id
    left join rental on inventory.inventory_id = rental.inventory_id
WHERE
    rental.rental_date is null