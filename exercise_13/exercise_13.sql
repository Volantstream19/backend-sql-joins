-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT
    country.country,
    AVG(payment.amount)
from
    country
    LEFT JOIN city ON country.country_id = city.country_id
    LEFT JOIN address ON city.city_id = address.city_id
    LEFT JOIN customer ON address.address_id = customer.address_id
    LEFT JOIN payment ON customer.customer_id = payment.customer_id
WHERE
    payment.amount IS NOT NULL
GROUP BY
    country.country_id
ORDER BY
    AVG desc
LIMIT
    10