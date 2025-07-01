# Airbnb Clone Project

A database schema for an Airbnb-like platform.
# Airbnb Clone Project

## About the Project
The **Airbnb Clone Project** is a comprehensive, real-world application that replicates the development of a robust booking platform like Airbnb. It emphasizes full-stack development with a focus on backend systems, database design, API security, and collaborative workflows. This hands-on experience helps learners understand complex software architectures and build scalable web applications in a team setting.

## Learning Objectives
By completing this project, learners will:

- Master collaborative team workflows using GitHub.
- Deepen understanding of backend architecture and relational database design.
- Implement secure, robust APIs.
- Gain experience in designing and managing CI/CD pipelines.
- Strengthen skills in documentation and software project planning.
- Learn to integrate Django, MySQL, and GraphQL into a cohesive tech stack.

## Requirements
To complete the project, learners should:

- Have a GitHub account and knowledge of repository management.
- Be comfortable writing in Markdown for documentation.
- Have experience with Django and MySQL.
- Understand software development lifecycle practices, including CI/CD and security.
- Be familiar with tools like Docker and GitHub Actions.

## Key Highlights

### 🔧 GitHub Repository Management
- Structure and initialize a project repository following best practices.

### 👥 Team Role Documentation
- Document team roles and responsibilities to simulate real-world collaboration.

### 🧱 Technology Stack Breakdown
- Detail the use of Django, MySQL, GraphQL, and related tools in the project.

### 🗂️ Database Design Proficiency
- Design and document a relational database schema with entities and relationships.

### 🚀 Feature-Driven Development
- Define and implement core application features aligned with user needs.

### 🔐 API Security Fundamentals
- Apply security best practices to protect user data and ensure safe API transactions.

### ⚙️ CI/CD Pipeline Integration
- Set up and document automated deployment pipelines for efficient delivery.

## Conclusion
This project equips learners with practical, industry-relevant skills and a mindset focused on scalability, problem-solving, and real-world software engineering practices.


---

## Users Table

```sql
CREATE TABLE Users (
    user_id UUID PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    role ENUM('guest', 'host', 'admin') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_users_email ON Users(email);
```

---

## Properties Table

```sql
CREATE TABLE Properties (
    property_id UUID PRIMARY KEY,
    host_id UUID NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(255) NOT NULL,
    pricepernight DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_host FOREIGN KEY (host_id) REFERENCES Users(user_id)
);

CREATE INDEX idx_properties_property_id ON Properties(property_id);
```

---

## Bookings Table

```sql
CREATE TABLE Bookings (
    booking_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_booking_user FOREIGN KEY (user_id) REFERENCES Users(user_id),
    CONSTRAINT fk_booking_property FOREIGN KEY (property_id) REFERENCES Properties(property_id)
);

CREATE INDEX idx_bookings_property_id ON Bookings(property_id);
CREATE INDEX idx_bookings_booking_id ON Bookings(booking_id);
```

---

## Payments Table

```sql
CREATE TABLE Payments (
    payment_id UUID PRIMARY KEY,
    booking_id UUID NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method ENUM('credit_card', 'paypal', 'stripe') NOT NULL,
    CONSTRAINT fk_payment_booking FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);
```

---

## Reviews Table

```sql
CREATE TABLE Reviews (
    review_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    rating INTEGER NOT NULL CHECK (rating >= 1 AND rating <= 5),
    comment TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_review_property FOREIGN KEY (property_id) REFERENCES Properties(property_id),
    CONSTRAINT fk_review_user FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
```

---

## Messages Table

```sql
CREATE TABLE Messages (
    message_id UUID PRIMARY KEY,
    sender_id UUID NOT NULL,
    recipient_id UUID NOT NULL,
    message_body TEXT NOT NULL,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_message_sender FOREIGN KEY (sender_id) REFERENCES Users(user_id),
    CONSTRAINT fk_message_recipient FOREIGN KEY (recipient_id) REFERENCES Users(user_id)
);
```
