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
This project equips learners with practical, industry-relevant skills and a mindset focused on scalability, problem-solving, and real-world software engineering practices.## 👥 Project Roles & Responsibilities

This section outlines the key team roles and their responsibilities in the Airbnb Clone Project, based on standard development practices and insights from the ITRexGroup blog.

---

### 👨‍💻 Backend Developer
**Responsibilities:**
- Design and implement RESTful or GraphQL APIs.
- Develop and maintain server-side logic using Django.
- Handle authentication, authorization, and session management.
- Ensure secure data handling and input validation.
- Collaborate with the Database Administrator to integrate data.

---

### 🧠 Database Administrator (DBA)
**Responsibilities:**
- Design and manage the MySQL database schema.
- Ensure data normalization, indexing, and performance optimization.
- Implement database backup and recovery plans.
- Manage access control and user permissions.

---

### 🎨 Frontend Developer
**Responsibilities:**
- Build responsive user interfaces that consume backend APIs.
- Use modern UI frameworks/libraries for clean design.
- Collaborate with backend developers to integrate functionality.
- Implement client-side validation and optimize UX.

---

### 🛡️ DevOps / CI/CD Engineer
**Responsibilities:**
- Set up CI/CD pipelines using GitHub Actions, Jenkins, or similar.
- Automate testing, build, and deployment processes.
- Manage Docker containers and orchestrate development environments.
- Monitor deployment infrastructure and optimize performance.

---

### 🗂️ Project Manager / Scrum Master
**Responsibilities:**
- Define project scope, milestones, and deliverables.
- Organize sprints and manage the project timeline.
- Facilitate team communication and resolve blockers.
- Ensure timely delivery and alignment with project goals.

---

### 📝 Technical Writer / Documentation Lead
**Responsibilities:**
- Maintain clear and comprehensive project documentation.
- Write technical specifications, user guides, and API references.
- Ensure consistency and clarity across all written materials.
- Support onboarding of new team members via documentation.

---

### 🧪 QA Engineer / Tester
**Responsibilities:**
- Create and run unit, integration, and UI test cases.
- Report and track bugs and performance issues.
- Validate features against functional requirements.
- Automate regression testing where possible.

---

These roles ensure smooth collaboration, clear responsibility distribution, and high-quality software delivery throughout the project lifecycle.

# 🧰 Project Technologies Overview

This project utilizes the following key technologies:

---

### ⚙️ Backend Technologies

- **Django**
  - A high-level Python web framework used to build and manage the backend of the application.
  - Handles routing, ORM (Object-Relational Mapping), authentication, and business logic.

- **Django REST Framework (DRF)**
  - An extension for Django to build RESTful APIs easily.
  - Provides tools for serialization, authentication, and permission handling.

- **GraphQL (optional/alternative to REST)**
  - A query language for APIs, allowing clients to request exactly the data they need.
  - Offers flexibility in front-end data fetching, reducing over-fetching or under-fetching.

---

### 🛢️ Database

- **PostgreSQL**
  - A powerful open-source relational database used to store structured application data.
  - Supports advanced features like full-text search, indexing, and data integrity through constraints.

---

### 🌐 Frontend Technologies

- **React.js**
  - A JavaScript library for building dynamic and interactive user interfaces.
  - Used to create components like booking forms, calendars, and dashboards.

- **Next.js (optional)**
  - A React framework with built-in support for SSR (Server-Side Rendering), routing, and API routes.
  - Improves performance and SEO of the front-end.

---

### ☁️ DevOps & Deployment

- **Docker**
  - Used to containerize the application for consistent development, testing, and deployment environments.

- **GitHub Actions**
  - For CI/CD automation (e.g., testing, building, and deploying the app on push/merge).

- **Vercel / Heroku / AWS**
  - Hosting platforms for deploying the front-end (Vercel) or full-stack backend (Heroku, AWS).

---

### 🔐 Authentication & Security

- **JWT (JSON Web Tokens)**
  - Used for stateless authentication across API endpoints.
  
- **OAuth2**
  - Enables third-party login via platforms like Google or Facebook.

---

### 📬 Messaging / Realtime (optional)

- **WebSockets or Django Channels**
  - For real-time messaging functionality between users (e.g., inbox/chat system).

---

### 🧪 Testing & Linting

- **PyTest / Django Test Framework**
  - Used to write unit and integration tests for backend logic.

- **ESLint + Prettier**
  - For linting and formatting JavaScript/React code.

---

## 🛠️ Technology Stack

The Airbnb Clone project uses the following technologies:

### ⚙️ Backend
- **Django**: A high-level Python web framework used to build RESTful APIs and manage backend logic, authentication, and routing.
- **Django REST Framework (DRF)**: A powerful toolkit for building Web APIs in Django. It simplifies the process of serializing data and handling requests.

### 🗃️ Database
- **PostgreSQL**: A robust open-source relational database system used to store data such as users, properties, bookings, reviews, and payments.

### 📡 API Layer
- **GraphQL**: A query language for APIs that allows clients to request exactly the data they need, improving performance and flexibility over traditional REST.

### 🌐 Frontend
- **React.js**: A JavaScript library for building dynamic user interfaces, particularly single-page applications with reusable UI components.
- **Next.js**: A React framework with server-side rendering capabilities used to enhance SEO and performance.

### 🧪 Testing
- **Pytest**: A testing framework for Python used to write and run unit tests for the backend.
- **Jest**: A JavaScript testing framework used for testing frontend components and logic.

### ☁️ Deployment & DevOps
- **Docker**: Containerization tool used to package the app and its dependencies to ensure consistent environments across development, testing, and production.
- **GitHub Actions**: Used for CI/CD pipelines, automating testing and deployment processes.
- **Vercel**: A cloud platform used to deploy the frontend (Next.js) application.
## 🗄️ Database Design

The database for the Airbnb Clone project is designed around five core entities. Each entity is defined with essential fields and relationships to reflect the core business logic.

### 🧑 Users
Represents individuals who can either host properties or book them.

**Fields:**
- `id` (Primary Key)
- `name`
- `email`
- `password_hash`
- `created_at`

**Relationships:**
- A user can list multiple properties.
- A user can make multiple bookings.
- A user can leave multiple reviews.

---

### 🏠 Properties
Represents accommodations listed by users.

**Fields:**
- `id` (Primary Key)
- `user_id` (Foreign Key → Users)
- `title`
- `description`
- `location`
- `price_per_night`

**Relationships:**
- Each property belongs to one user.
- A property can have many bookings.
- A property can receive multiple reviews.

---

### 📆 Bookings
Represents reservations made by users for specific properties.

**Fields:**
- `id` (Primary Key)
- `user_id` (Foreign Key → Users)
- `property_id` (Foreign Key → Properties)
- `check_in_date`
- `check_out_date`
- `total_price`
- `status`

**Relationships:**
- A booking is made by one user.
- A booking is for one specific property.
- Each booking is associated with one payment.

---

### 📝 Reviews
Represents feedback left by users about properties.

**Fields:**
- `id` (Primary Key)
- `user_id` (Foreign Key → Users)
- `property_id` (Foreign Key → Properties)
- `rating` (e.g., 1–5)
- `comment`
- `created_at`

**Relationships:**
- A review is written by one user for one property.
- A property can have multiple reviews.

---

### 💳 Payments
Represents financial transactions related to bookings.

**Fields:**
- `id` (Primary Key)
- `booking_id` (Foreign Key → Bookings)
- `amount`
- `payment_method`
- `status`
- `paid_at`

**Relationships:**
- Each payment corresponds to one booking.

---

## 🔗 Entity Relationships Summary

- **User** ⟶ **Properties** (1-to-many)  
- **User** ⟶ **Bookings** (1-to-many)  
- **User** ⟶ **Reviews** (1-to-many)  
- **Property** ⟶ **Bookings** (1-to-many)  
- **Property** ⟶ **Reviews** (1-to-many)  
- **Booking** ⟶ **Payment** (1-to-1)  



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
