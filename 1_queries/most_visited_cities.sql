SELECT properties.city as city, count(reservations.*) as total_reservations
FROM properties
JOIN reservations ON reservations.property_id = properties.id

GROUP by properties.city
ORDER BY total_reservations DESC;