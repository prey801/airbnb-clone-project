# 🧩 Entity-Relationship (ER) Diagram - Property Booking System

## 🧍‍♂️ User
| Attribute       | Type                             | Constraints                        |
|----------------|----------------------------------|------------------------------------|
| user_id        | UUID (PK, Indexed)               | Primary Key                        |
| first_name     | VARCHAR                          | NOT NULL                           |
| last_name      | VARCHAR                          | NOT NULL                           |
| email          | VARCHAR                          | UNIQUE, NOT NULL, Indexed          |
| password_hash  | VARCHAR                          | NOT NULL                           |
| phone_number   | VARCHAR                          | NULL                               |
| role           | ENUM (guest, host, admin)        | NOT NULL                           |
| created_at     | TIMESTAMP                        | DEFAULT CURRENT_TIMESTAMP          |

---

## 🏠 Property
| Attribute       | Type                             | Constraints                        |
|----------------|----------------------------------|------------------------------------|
| property_id    | UUID (PK, Indexed)               | Primary Key                        |
| host_id        | UUID (FK → User.user_id)         | Foreign Key                        |
| name           | VARCHAR                          | NOT NULL                           |
| description    | TEXT                             | NOT NULL                           |
| location       | VARCHAR                          | NOT NULL                           |
| pricepernight  | DECIMAL                          | NOT NULL                           |
| created_at     | TIMESTAMP                        | DEFAULT CURRENT_TIMESTAMP          |
| updated_at     | TIMESTAMP                        | ON UPDATE CURRENT_TIMESTAMP        |

---

## 📆 Booking
| Attribute       | Type                             | Constraints                        |
|----------------|----------------------------------|------------------------------------|
| booking_id     | UUID (PK, Indexed)               | Primary Key                        |
| property_id    | UUID (FK → Property.property_id) | Foreign Key                        |
| user_id        | UUID (FK → User.user_id)         | Foreign Key                        |
| start_date     | DATE                             | NOT NULL                           |
| end_date       | DATE                             | NOT NULL                           |
| total_price    | DECIMAL                          | NOT NULL                           |
| status         | ENUM (pending, confirmed, canceled) | NOT NULL                        |
| created_at     | TIMESTAMP                        | DEFAULT CURRENT_TIMESTAMP          |

---

## 💳 Payment
| Attribute       | Type                             | Constraints                        |
|----------------|----------------------------------|------------------------------------|
| payment_id     | UUID (PK, Indexed)               | Primary Key                        |
| booking_id     | UUID (FK → Booking.booking_id)   | Foreign Key                        |
| amount         | DECIMAL                          | NOT NULL                           |
| payment_date   | TIMESTAMP                        | DEFAULT CURRENT_TIMESTAMP          |
| payment_method | ENUM (credit_card, paypal, stripe) | NOT NULL                        |

---

## 🌟 Review
| Attribute       | Type                             | Constraints                        |
|----------------|----------------------------------|------------------------------------|
| review_id      | UUID (PK, Indexed)               | Primary Key                        |
| property_id    | UUID (FK → Property.property_id) | Foreign Key                        |
| user_id        | UUID (FK → User.user_id)         | Foreign Key                        |
| rating         | INTEGER                          | NOT NULL, CHECK: 1 <= rating <= 5  |
| comment        | TEXT                             | NOT NULL                           |
| created_at     | TIMESTAMP                        | DEFAULT CURRENT_TIMESTAMP          |

---

## 💬 Message
| Attribute       | Type                             | Constraints                        |
|----------------|----------------------------------|------------------------------------|
| message_id     | UUID (PK, Indexed)               | Primary Key                        |
| sender_id      | UUID (FK → User.user_id)         | Foreign Key                        |
| recipient_id   | UUID (FK → User.user_id)         | Foreign Key                        |
| message_body   | TEXT                             | NOT NULL                           |
| sent_at        | TIMESTAMP                        | DEFAULT CURRENT_TIMESTAMP          |

---

## 🔗 Relationships

- **User → Property**: 1-to-many (host_id)
- **User → Booking**: 1-to-many (user_id)
- **User → Review**: 1-to-many (user_id)
- **User → Message (sender/recipient)**: 1-to-many
- **Property → Booking**: 1-to-many
- **Property → Review**: 1-to-many
- **Booking → Payment**: 1-to-1
