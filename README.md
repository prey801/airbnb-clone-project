# Airbnb Clone Project

## About the Project
The Airbnb Clone Project is a comprehensive full-stack application designed to replicate key functionalities of the Airbnb platform. It allows users to register, list properties, make bookings, leave reviews, and process payments. This project emphasizes backend systems, secure API development, and CI/CD integration in a collaborative, industry-style development environment.

## Learning Objective
By completing this project, learners will:

- Master collaborative team workflows using GitHub.
- Deepen understanding of backend architecture and relational database design.
- Implement secure and scalable APIs using modern frameworks.
- Build and maintain CI/CD pipelines for streamlined deployment.
- Integrate tools like Django, MySQL, Docker, and GraphQL.
- Strengthen technical documentation and planning skills.

---

## Team Roles

- **Backend Developer**  
  Responsible for developing RESTful APIs, integrating the database with the server logic, and handling authentication, security, and business logic.

- **Frontend Developer**  
  Focuses on implementing user interfaces, consuming APIs, and ensuring a smooth user experience across devices.

- **Database Administrator (DBA)**  
  Designs and manages the database schema, optimizes queries, and ensures data integrity and performance.

- **DevOps Engineer**  
  Implements and monitors CI/CD pipelines, configures Docker containers, and manages deployment environments.

- **Project Manager**  
  Oversees progress, coordinates between team members, and ensures timely delivery of milestones.

---

## Technology Stack

- **Django**  
  A high-level Python web framework for building secure, maintainable APIs and server-side logic.

- **MySQL**  
  A relational database system used to store and manage structured data such as users, listings, and bookings.

- **GraphQL**  
  A query language for APIs that enables clients to fetch exactly the data they need, improving performance and flexibility.

- **Docker**  
  Containerization platform used to package applications and dependencies, ensuring consistent environments across development and production.

- **GitHub Actions**  
  Automates testing, deployment, and other workflows using CI/CD pipelines.

---

## Database Design

### Key Entities & Fields

- **Users**
  - `id`: Primary Key
  - `name`: Full name
  - `email`: Unique identifier
  - `password_hash`: Secured password storage
  - `role`: Guest or Host

- **Properties**
  - `id`: Primary Key
  - `title`: Property name
  - `description`: Detailed listing info
  - `location`: Address or coordinates
  - `owner_id`: FK to Users table

- **Bookings**
  - `id`: Primary Key
  - `user_id`: FK to Users
  - `property_id`: FK to Properties
  - `start_date`: Booking start
  - `end_date`: Booking end

- **Reviews**
  - `id`: Primary Key
  - `user_id`: FK to Users
  - `property_id`: FK to Properties
  - `rating`: Numerical score
  - `comment`: Text feedback

- **Payments**
  - `id`: Primary Key
  - `booking_id`: FK to Bookings
  - `amount`: Transaction amount
  - `status`: Paid, pending, failed
  - `method`: Card, PayPal, etc.

### Entity Relationships

- A **User** can own multiple **Properties**.
- A **Booking** is made by a **User** for a **Property**.
- A **Review** is left by a **User** for a **Property**.
- A **Payment** is associated with a single **Booking**.

---

## Feature Breakdown

- **User Management**  
  Registration, login, role-based access control for guests and hosts. Handles password hashing and session management.

- **Property Management**  
  Hosts can create, update, or delete property listings with details, images, and pricing.

- **Booking System**  
  Guests can view listings, check availability, and create or cancel bookings.

- **Reviews and Ratings**  
  Guests can leave ratings and reviews after completing a stay, helping build trust.

- **Payment Integration**  
  Simulated or real payment processing for booking confirmations, with secure data handling.

- **Admin Dashboard**  
  (Optional) For platform administrators to oversee users, listings, and transactions.

---

## API Security

Key security measures to be implemented:

- **Authentication**  
  Use of JWT tokens or session-based auth to ensure that only verified users access protected endpoints.

- **Authorization**  
  Role-based permissions to control who can access or modify resources (e.g., only hosts can create listings).

- **Rate Limiting**  
  Prevent abuse by limiting the number of requests per IP per minute/hour.

- **Input Validation & Sanitization**  
  Prevent injection attacks (SQLi, XSS) by ensuring all incoming data is sanitized.

- **HTTPS & Secure Headers**  
  Enforce secure data transmission and use HTTP security headers like `Content-Security-Policy`.

These measures protect user data, secure financial transactions, and defend the platform from malicious activities.

---

## CI/CD Pipeline

CI/CD (Continuous Integration/Continuous Deployment) automates the process of testing, building, and deploying the project.

### Importance:

- **Efficiency**: Developers can push changes quickly and safely.
- **Consistency**: Ensures the same build process in development and production.
- **Automation**: Reduces human errors by automating tests and deployment.

### Tools Used:

- **GitHub Actions**: Automates tests and deployments on push or pull request events.
- **Docker**: Standardizes environment setup, making the app portable across systems.
- **Heroku / Render / AWS EC2 (Optional)**: Can be used for deployment.

---

**Repository**  
GitHub: [airbnb-clone-project](https://github.com/your-username/airbnb-clone-project)

---

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
