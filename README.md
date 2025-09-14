# 🚗 Enterprise Car Rental Management System

[![Build Status](https://github.com/workeainc/Car-Rental-System/workflows/Deploy%20to%20Railway/badge.svg)](https://github.com/workeainc/Car-Rental-System/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PHP Version](https://img.shields.io/badge/PHP-8.1%2B-blue.svg)](https://php.net)
[![MySQL](https://img.shields.io/badge/MySQL-5.7%2B-orange.svg)](https://mysql.com)

## 📋 Table of Contents
- [Overview](#overview)
- [Features](#features)
- [System Architecture](#system-architecture)
- [Technology Stack](#technology-stack)
- [Installation & Setup](#installation--setup)
- [Deployment Guide](#deployment-guide)
- [API Documentation](#api-documentation)
- [Database Schema](#database-schema)
- [Security Features](#security-features)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)
- [Support & Contact](#support--contact)

## 🎯 Overview

The **Enterprise Car Rental Management System** is a comprehensive, full-stack web application designed to streamline car rental operations for businesses of all sizes. Built with modern web technologies and following industry best practices, this system provides a robust platform for managing vehicle inventory, customer relationships, bookings, and financial transactions.

### 🎪 **Live Demo**
- **Frontend**: [https://car-rental-system-production.up.railway.app](https://car-rental-system-production.up.railway.app)
- **Admin Panel**: [Admin Dashboard](https://car-rental-system-production.up.railway.app/admin)
- **Demo Credentials**: `admin` / `admin123`

## ✨ Features

### 🏢 **Business Management**
- **Fleet Management**: Complete vehicle inventory control with real-time availability
- **Customer Relationship Management**: Comprehensive customer profiles and history
- **Booking System**: Advanced reservation management with conflict resolution
- **Financial Tracking**: Revenue analytics and payment processing
- **Reporting Dashboard**: Business intelligence and operational insights

### 👥 **Customer Experience**
- **Intuitive Booking Interface**: Streamlined car selection and reservation process
- **Real-time Availability**: Live inventory updates and instant confirmation
- **Payment Integration**: Secure MPESA payment gateway integration
- **Status Tracking**: Real-time booking status and notifications
- **Communication Portal**: Direct messaging with administrative staff

### 🔧 **Administrative Tools**
- **Multi-role Access Control**: Granular permission management
- **Audit Trail**: Complete system activity logging
- **Data Export**: CSV/PDF reporting capabilities
- **System Monitoring**: Performance metrics and health checks
- **Automated Workflows**: Streamlined approval processes

### 📱 **Technical Excellence**
- **Responsive Design**: Cross-platform compatibility (Desktop, Tablet, Mobile)
- **Progressive Web App**: Offline capability and app-like experience
- **API-First Architecture**: RESTful services for third-party integrations
- **CI/CD Pipeline**: Automated testing and deployment
- **Cloud-Native**: Scalable infrastructure with auto-scaling capabilities

## 🏗️ System Architecture

```
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   Presentation  │    │   Application   │    │      Data       │
│     Layer       │    │     Layer       │    │     Layer       │
├─────────────────┤    ├─────────────────┤    ├─────────────────┤
│ • HTML5/CSS3    │    │ • PHP 8.1+      │    │ • MySQL 5.7+    │
│ • JavaScript    │    │ • Session Mgmt  │    │ • Data Models   │
│ • jQuery        │    │ • Authentication│    │ • Relationships │
│ • Responsive UI │    │ • Business Logic│    │ • Constraints   │
└─────────────────┘    └─────────────────┘    └─────────────────┘
         │                       │                       │
         └───────────────────────┼───────────────────────┘
                                 │
                    ┌─────────────────┐
                    │   Integration   │
                    │     Layer       │
                    ├─────────────────┤
                    │ • MPESA API     │
                    │ • Email Service │
                    │ • File Storage  │
                    │ • Monitoring    │
                    └─────────────────┘
```

## 🛠️ Technology Stack

### **Backend Technologies**
- **Runtime**: PHP 8.1+ with OOP principles
- **Database**: MySQL 5.7+ with InnoDB engine
- **Session Management**: Native PHP sessions with security hardening
- **File Handling**: Secure upload and storage mechanisms

### **Frontend Technologies**
- **Markup**: Semantic HTML5 with accessibility features
- **Styling**: CSS3 with Flexbox/Grid layouts
- **Scripting**: Vanilla JavaScript + jQuery for DOM manipulation
- **Responsive Framework**: Custom responsive design system

### **DevOps & Infrastructure**
- **Version Control**: Git with GitFlow workflow
- **CI/CD**: GitHub Actions with automated testing
- **Deployment**: Railway Platform (Production) / Docker (Development)
- **Monitoring**: Application performance monitoring and logging
- **Security**: SSL/TLS encryption, input sanitization, CSRF protection

### **Third-Party Integrations**
- **Payment Gateway**: MPESA API for secure transactions
- **Email Service**: SMTP integration for notifications
- **Cloud Storage**: Scalable file storage solutions
- **Analytics**: Usage tracking and business intelligence

## 🚀 Installation & Setup

### **Prerequisites**
- PHP 8.1 or higher
- MySQL 5.7 or higher
- Composer (PHP dependency manager)
- Git version control
- Web server (Apache/Nginx) or PHP built-in server

### **Local Development Setup**

1. **Clone Repository**
   ```bash
   git clone https://github.com/workeainc/Car-Rental-System.git
   cd Car-Rental-System
   ```

2. **Install Dependencies**
   ```bash
   composer install
   ```

3. **Environment Configuration**
   ```bash
   cp env.example .env
   ```
   
   Edit `.env` with your local configuration:
   ```env
   # Database Configuration
   MYSQLHOST=localhost
   MYSQLUSER=root
   MYSQLPASSWORD=your_password
   MYSQLDATABASE=cars
   MYSQLPORT=3306
   
   # Application Settings
   APP_ENV=development
   APP_DEBUG=true
   APP_URL=http://localhost:8000
   
   # Security Keys
   SESSION_SECRET=generate_random_32_char_string
   ENCRYPTION_KEY=generate_random_encryption_key
   
   # MPESA Configuration
   MPESA_PAYBILL=your_paybill_number
   MPESA_SHORTCODE=your_shortcode
   MPESA_PASSKEY=your_passkey
   ```

4. **Database Setup**
   ```bash
   # Create database
   mysql -u root -p -e "CREATE DATABASE cars;"
   
   # Import schema and sample data
   mysql -u root -p cars < db/cars.sql
   
   # Initialize production-ready schema
   mysql -u root -p cars < db/init.sql
   ```

5. **Start Development Server**
   ```bash
   # Using PHP built-in server
   php -S localhost:8000
   
   # Or using Composer script
   composer run start
   ```

6. **Access Application**
   - **Frontend**: http://localhost:8000
   - **Admin Panel**: http://localhost:8000/admin
   - **Default Admin**: `admin` / `admin123`

### **Development Tools**

```bash
# Run syntax checks
composer run test

# Start development server
composer run start

# Generate documentation
composer run docs
```

## 🌐 Deployment Guide

### **Production Deployment (Railway - Recommended)**

Railway provides the most cost-effective and developer-friendly deployment solution:

1. **Setup Railway Account**
   ```bash
   # Install Railway CLI
   npm install -g @railway/cli
   
   # Login to Railway
   railway login
   ```

2. **Initialize Project**
   ```bash
   # Create new Railway project
   railway init
   
   # Add MySQL database service
   railway add mysql
   ```

3. **Configure Environment Variables**
   Railway automatically provides database credentials. Additional variables:
   ```bash
   railway variables set APP_ENV=production
   railway variables set APP_DEBUG=false
   railway variables set MPESA_PAYBILL=your_production_paybill
   ```

4. **Deploy Application**
   ```bash
   railway up
   ```

5. **Setup Custom Domain** (Optional)
   ```bash
   railway domain add your-domain.com
   ```

### **Alternative Deployment Options**

#### **Heroku Deployment**
```bash
# Create Heroku app
heroku create your-app-name

# Add MySQL addon
heroku addons:create cleardb:ignite

# Configure environment
heroku config:set APP_ENV=production

# Deploy
git push heroku main
```

#### **Docker Deployment**
```bash
# Build Docker image
docker build -t car-rental-system .

# Run with Docker Compose
docker-compose up -d
```

#### **Traditional Web Hosting**
1. Upload files via FTP/SFTP
2. Import database using phpMyAdmin
3. Configure environment variables in hosting panel
4. Update file permissions for uploads directory

## 📚 API Documentation

### **Authentication Endpoints**
```php
POST /api/auth/login
POST /api/auth/logout
POST /api/auth/register
GET  /api/auth/profile
```

### **Vehicle Management**
```php
GET    /api/vehicles           # List all vehicles
GET    /api/vehicles/{id}      # Get vehicle details
POST   /api/vehicles           # Create new vehicle
PUT    /api/vehicles/{id}      # Update vehicle
DELETE /api/vehicles/{id}      # Delete vehicle
```

### **Booking Management**
```php
GET    /api/bookings           # List bookings
POST   /api/bookings           # Create booking
PUT    /api/bookings/{id}      # Update booking
DELETE /api/bookings/{id}      # Cancel booking
```

### **Payment Processing**
```php
POST   /api/payments/mpesa     # Process MPESA payment
GET    /api/payments/{id}      # Get payment status
POST   /api/payments/verify    # Verify payment
```

## 🗄️ Database Schema

### **Core Tables Structure**

```sql
-- Vehicle Management
CREATE TABLE cars (
    car_id INT PRIMARY KEY AUTO_INCREMENT,
    car_name VARCHAR(255) NOT NULL,
    car_type VARCHAR(255) NOT NULL,
    image TEXT,
    hire_cost DECIMAL(10,2) NOT NULL,
    capacity INT NOT NULL,
    status ENUM('Available', 'Rented', 'Maintenance') DEFAULT 'Available',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Customer Management
CREATE TABLE client (
    client_id INT PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    id_no INT UNIQUE NOT NULL,
    phone VARCHAR(20) NOT NULL,
    location VARCHAR(255),
    gender ENUM('Male', 'Female', 'Other'),
    car_id INT,
    status ENUM('Pending', 'Approved', 'Rejected') DEFAULT 'Pending',
    mpesa VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (car_id) REFERENCES cars(car_id)
);

-- Administrative Users
CREATE TABLE admin (
    admin_id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(255) UNIQUE NOT NULL,
    pass VARCHAR(255) NOT NULL,
    role ENUM('super_admin', 'admin', 'staff') DEFAULT 'admin',
    last_login TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Rental Transactions
CREATE TABLE hire (
    hire_id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT NOT NULL,
    car_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_cost DECIMAL(10,2),
    status ENUM('Active', 'Completed', 'Cancelled') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (client_id) REFERENCES client(client_id),
    FOREIGN KEY (car_id) REFERENCES cars(car_id)
);

-- Communication System
CREATE TABLE message (
    msg_id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT,
    admin_id INT,
    message TEXT NOT NULL,
    status ENUM('Unread', 'Read', 'Replied') DEFAULT 'Unread',
    time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (client_id) REFERENCES client(client_id),
    FOREIGN KEY (admin_id) REFERENCES admin(admin_id)
);
```

### **Database Relationships**
- One-to-Many: Cars → Bookings
- One-to-Many: Clients → Bookings  
- One-to-Many: Clients → Messages
- Many-to-Many: Cars ↔ Clients (through hire table)

## 🔐 Security Features

### **Authentication & Authorization**
- Session-based authentication with secure cookies
- Role-based access control (RBAC)
- Password hashing using PHP's `password_hash()`
- Session timeout and regeneration
- Multi-factor authentication support (planned)

### **Data Protection**
- SQL injection prevention using prepared statements
- Cross-Site Scripting (XSS) protection
- Cross-Site Request Forgery (CSRF) tokens
- Input validation and sanitization
- File upload restrictions and validation

### **Infrastructure Security**
- HTTPS/SSL encryption in production
- Database connection encryption
- Environment variable protection
- Rate limiting for API endpoints
- Security headers implementation

### **Compliance & Standards**
- GDPR compliance for data handling
- PCI DSS considerations for payment processing
- Regular security audits and updates
- Vulnerability scanning integration

## 🧪 Testing

### **Automated Testing Suite**
```bash
# Run all tests
composer test

# Run specific test suites
composer test:unit
composer test:integration
composer test:functional
```

### **Testing Coverage**
- **Unit Tests**: Business logic and utility functions
- **Integration Tests**: Database operations and API endpoints
- **Functional Tests**: End-to-end user workflows
- **Security Tests**: Vulnerability scanning and penetration testing

### **Quality Assurance**
- Code quality metrics with PHPStan
- Coding standards enforcement (PSR-12)
- Performance benchmarking
- Cross-browser compatibility testing

## 🤝 Contributing

We welcome contributions from the development community! Please follow our contribution guidelines:

### **Development Workflow**
1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **Commit** your changes (`git commit -m 'Add amazing feature'`)
4. **Push** to the branch (`git push origin feature/amazing-feature`)
5. **Open** a Pull Request

### **Code Standards**
- Follow PSR-12 coding standards
- Write comprehensive tests for new features
- Update documentation for any API changes
- Ensure backward compatibility

### **Pull Request Process**
- Provide clear description of changes
- Include relevant test cases
- Ensure all CI/CD checks pass
- Request review from maintainers

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

### **Commercial Use**
This software is free for commercial use under the MIT license terms. For enterprise support and custom development services, please contact our team.

## 📞 Support & Contact

### **Technical Support**
- **GitHub Issues**: [Report bugs and feature requests](https://github.com/workeainc/Car-Rental-System/issues)
- **Documentation**: [Wiki and API docs](https://github.com/workeainc/Car-Rental-System/wiki)
- **Community Forum**: [Discussions and Q&A](https://github.com/workeainc/Car-Rental-System/discussions)

### **Commercial Inquiries**
- **Company**: WorkeAI Inc.
- **Email**: contact@workeai.com
- **Website**: [www.workeai.com](https://www.workeai.com)
- **LinkedIn**: [WorkeAI Inc.](https://www.linkedin.com/company/workeai)

### **Development Team**
- **Lead Developer**: WorkeAI Development Team
- **Project Maintainer**: [@workeainc](https://github.com/workeainc)
- **Contributors**: [View all contributors](https://github.com/workeainc/Car-Rental-System/contributors)

---

## 🌟 Acknowledgments

Special thanks to:
- The PHP community for excellent documentation and support
- MySQL team for robust database technology  
- Railway platform for simplified deployment solutions
- All contributors and testers who helped improve this system

---

<div align="center">

**⭐ Star this repository if you find it helpful!**

[![GitHub stars](https://img.shields.io/github/stars/workeainc/Car-Rental-System.svg?style=social&label=Star)](https://github.com/workeainc/Car-Rental-System/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/workeainc/Car-Rental-System.svg?style=social&label=Fork)](https://github.com/workeainc/Car-Rental-System/network)

**Made with ❤️ by WorkeAI Inc.**

</div>
