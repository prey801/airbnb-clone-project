-- Users (Hosts and Guests)
INSERT INTO Users (id, name, email, password_hash, role) VALUES
(1, 'Alice Johnson', 'alice@example.com', 'hashed_pw_1', 'host'),
(2, 'Bob Smith', 'bob@example.com', 'hashed_pw_2', 'guest'),
(3, 'Charlie Kim', 'charlie@example.com', 'hashed_pw_3', 'guest'),
(4, 'Diana Lee', 'diana@example.com', 'hashed_pw_4', 'host');

-- Properties
INSERT INTO Properties (id, title, description, location, price_per_night, host_id) VALUES
(1, 'Cozy Loft in Nairobi', 'A modern loft in the heart of the city', 'Nairobi, Kenya', 50.00, 1),
(2, 'Beachfront Villa', 'A relaxing beach villa with ocean views', 'Mombasa, Kenya', 120.00, 4),
(3, 'Countryside Cottage', 'Quiet escape near Mount Kenya', 'Nanyuki, Kenya', 75.00, 1);

-- Bookings
INSERT INTO Bookings (id, user_id, property_id, start_date, end_date, status) VALUES
(1, 2, 1, '2025-08-01', '2025-08-05', 'confirmed'),
(2, 3, 2, '2025-08-10', '2025-08-15', 'confirmed'),
(3, 2, 3, '2025-09-01', '2025-09-03', 'cancelled');

-- Payments
INSERT INTO Payments (id, booking_id, amount, payment_method, payment_status) VALUES
(1, 1, 200.00, 'credit_card', 'successful'),
(2, 2, 600.00, 'paypal', 'successful'),
(3, 3, 150.00, 'credit_card', 'refunded');

-- Reviews
INSERT INTO Reviews (id, user_id, property_id, rating, comment) VALUES
(1, 2, 1, 5, 'Amazing place and very clean!'),
(2, 3, 2, 4, 'Loved the location, very peaceful.'),
(3, 2, 3, 2, 'Had to cancel but host was responsive.');

-- Notifications
INSERT INTO Notifications (id, user_id, message, is_read) VALUES
(1, 2, 'Your booking for Cozy Loft in Nairobi is confirmed.', false),
(2, 3, 'Your booking for Beachfront Villa is confirmed.', false),
(3, 2, 'Your booking for Countryside Cottage has been cancelled.', true);  
-- Messages
INSERT INTO Messages (id, sender_id, receiver_id, content, timestamp) VALUES
(1, 1, 2, 'Hi Bob, your booking is confirmed!', '2025-07-20 10:00:00'),
(2, 4, 3, 'Hi Charlie, your booking is confirmed!', '2025-07-21 11:00:00'),
(3, 2, 1, 'Thanks Alice, I had a great stay!', '2025-08-06 12:00:00'),
(4, 3, 4, 'Diana, your villa was amazing!', '2025-08-16 13:00:00'),
(5, 2, 1, 'Alice, I had to cancel my booking for the cottage.', '2025-09-02 14:00:00'),
(6, 1, 2, 'No problem Bob, I understand. Let me know if you need anything else.', '2025-09-02 15:00:00'),
(7, 4, 3, 'Thanks Charlie, glad you enjoyed the villa! Let me know if you want to book again.', '2025-08-17 16:00:00'),
(8, 3, 4, 'Diana, I loved the beachfront villa! Will definitely recommend to friends.', '2025-08-18 17:00:00'),
(9, 2, 1, 'Alice, I really enjoyed the loft. It was perfect for my stay in Nairobi.', '2025-08-06 18:00:00'),
(10, 1, 2, 'Bob, thanks for the kind words! You’re welcome back anytime.', '2025-08-07 19:00:00'),
(11, 4, 3, 'Charlie, I’m glad you loved the cottage! It’s a great getaway spot.', '2025-08-19 20:00:00'),
(12, 3, 4, 'Diana, I’ll definitely book the villa again next time I’m in Mombasa. It was fantastic!', '2025-08-20 21:00:00'),
(13, 2, 1, 'Alice, I had to cancel my booking for the cottage due to a family emergency. I hope to book again soon.', '2025-09-02 22:00:00'),
(14, 1, 2, 'No worries Bob, I completely understand. Family comes first. Let me know if you need any help with future bookings.', '2025-09-02 23:00:00'),
(15, 4, 3, 'Charlie, I’m so glad you enjoyed the villa! It’s always a pleasure hosting you. Let me know if you need any recommendations for your next trip.', '2025-08-21 00:00:00'),
(16, 3, 4, 'Diana, thank you for the wonderful stay! The beachfront villa was exactly what I needed for a relaxing vacation. I’ll definitely recommend it to my friends and family.', '2025-08-22 01:00:00'),
