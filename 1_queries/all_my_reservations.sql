SELECT (reservations.*), (properties.*), AVG(property_reviews.rating) as average_rating
FROM properties
JOIN reservations ON reservations.property_id = properties.id
JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE  reservations.guest_id = 1
GROUP BY properties.id, reservations.id
HAVING (now()::date - reservations.end_date) > 0
ORDER BY reservations.start_date
LIMIT 10;