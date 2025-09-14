# Car Rental Management System

A complete car rental management system built with PHP, MySQL, HTML, CSS, and JavaScript.

## Features

- 🚗 **Vehicle Management**: Add, edit, and manage car inventory
- 👥 **Customer Management**: Handle customer registrations and bookings
- 💳 **Payment Integration**: MPESA payment processing
- 📊 **Admin Dashboard**: Comprehensive admin panel for managing operations
- 📱 **Responsive Design**: Mobile-friendly interface
- 💬 **Messaging System**: Communication between customers and admin

## Tech Stack

- **Backend**: PHP 8.1+
- **Database**: MySQL 5.7+
- **Frontend**: HTML5, CSS3, JavaScript, jQuery
- **Payment**: MPESA Integration

## Quick Start

### Local Development

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd car-rental-system
   ```

2. **Setup Database**
   ```bash
   # Create database
   mysql -u root -p
   CREATE DATABASE cars;
   
   # Import schema
   mysql -u root -p cars < db/cars.sql
   ```

3. **Configure Environment**
   ```bash
   cp env.example .env
   # Edit .env with your database credentials
   ```

4. **Start Development Server**
   ```bash
   php -S localhost:8000
   ```

5. **Access Application**
   - Frontend: http://localhost:8000
   - Admin Panel: http://localhost:8000/admin
   - Default Admin: username=`admin`, password=`admin`

### Production Deployment (Railway)

1. **Setup Railway Account**
   - Sign up at [railway.app](https://railway.app)
   - Install Railway CLI

2. **Deploy to Railway**
   ```bash
   # Login to Railway
   railway login
   
   # Create new project
   railway init
   
   # Add MySQL database
   railway add mysql
   
   # Deploy
   railway up
   ```

3. **Configure GitHub Integration**
   - Connect your GitHub repository in Railway dashboard
   - Set up automatic deployments from main branch

## CI/CD Pipeline

This project includes GitHub Actions for:
- ✅ PHP syntax validation
- ✅ Database connection testing
- ✅ Automated deployment to Railway

## Environment Variables

Required environment variables for production:

```env
MYSQLHOST=your_mysql_host
MYSQLUSER=your_mysql_user
MYSQLPASSWORD=your_mysql_password
MYSQLDATABASE=cars
MYSQLPORT=3306
```

## Project Structure

```
car-rental-system/
├── admin/                 # Admin panel files
├── cars/                  # Car images
├── css/                   # Stylesheets
├── db/                    # Database files
├── includes/              # PHP includes
├── js/                    # JavaScript files
├── .github/workflows/     # CI/CD pipeline
├── index.php             # Homepage
├── login.php             # Admin login
├── book_car.php          # Car booking
└── pay.php               # Payment processing
```

## Database Schema

- **admin**: Admin user credentials
- **cars**: Vehicle inventory
- **client**: Customer information and bookings
- **hire**: Rental transactions
- **message**: Customer-admin communications

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run tests: `composer test`
5. Submit a pull request

## License

This project is open source and available under the [MIT License](LICENSE).

## Support

For support and questions:
- Create an issue on GitHub
- Contact: your-email@example.com

---

**Live Demo**: [Your Railway App URL]
**Admin Demo**: username=`admin`, password=`admin123`
