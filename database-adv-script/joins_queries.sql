---- This script demonstrates how to perform INNER JOINs between the Bookings and Users tables.
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM 
    Bookings b
INNER JOIN 
    Users u ON b.user_id = u.user_id;

-- This script demonstrates how to perform LEFT JOINs between the Properties and Users tables.
SELECT 
    p.property_id,
    p.name AS property_name,
    r.review_id,
    r.rating,
    r.comment
FROM 
    Properties p
LEFT JOIN 
    Reviews r ON p.property_id = r.property_id;
--- full outer join between Users and Bookings
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price
FROM 
    Users u
FULL OUTER JOIN 
    Bookings b ON u.user_id = b.user_id;

