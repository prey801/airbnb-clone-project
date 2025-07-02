---non-correlated subquery properties with Avg
SELECT 
    p.property_id,
    p.name,
    p.location,
    p.pricepernight
FROM 
    Properties p
WHERE 
    p.property_id IN (
        SELECT 
            r.property_id
        FROM 
            Reviews r
        GROUP BY 
            r.property_id
        HAVING 
            AVG(r.rating) > 4.0
    );
----- correlated subquery properties with Avg
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM 
    Users u
WHERE 
    (
        SELECT 
            COUNT(*)
        FROM 
            Bookings b
        WHERE 
            b.user_id = u.user_id
    ) > 3;
----- non-correlated subquery bookings with Count
SELECT  
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price
FROM 
    Bookings b
WHERE 
    b.property_id IN (
        SELECT 
            p.property_id
        FROM 
            Properties p
        WHERE 
            p.location = 'Nairobi'
    );
----- correlated subquery bookings with Count
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price
FROM 
    Bookings b
WHERE 
    b.user_id IN (
        SELECT 
            u.user_id
        FROM 
            Users u
        WHERE 
            u.role = 'guest'
            AND (
                SELECT 
                    COUNT(*)
                FROM 
                    Bookings b2
                WHERE   
                    b2.user_id = u.user_id
            ) > 2
    );
----- non-correlated subquery payments with Sum
SELECT 
    p.payment_id,
    p.amount,
    p.payment_method,
    p.payment_status
FROM 
    Payments p
WHERE 
    p.booking_id IN (
        SELECT 
            b.booking_id
        FROM 
            Bookings b
        WHERE 
            b.status = 'confirmed'
    );
