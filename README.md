# Medical Products Supply Chain Management System with Blockchain

A comprehensive blockchain-based supply chain management system designed specifically for medical products to ensure authenticity, traceability, and prevent counterfeiting throughout the entire product lifecycle.

## 🏥 Project Overview

This system implements blockchain technology to create an immutable record of medical products from manufacturing to end-consumer delivery, ensuring transparency and trust in the medical supply chain.

## 🚀 Features

### Core Functionality
- **Blockchain-based Product Tracking**: Immutable records using hash chaining
- **Multi-role User Management**: Manufacturer, Supplier, Retailer, Customer, Admin
- **Product Lifecycle Management**: Complete tracking from production to sale
- **Authenticity Verification**: QR code and product code verification system
- **Real-time Notifications**: Email alerts for key transactions
- **Expiry Date Monitoring**: Automatic tracking of product expiration
- **Anti-counterfeiting**: Blockchain verification prevents fake products

### User Roles & Capabilities

#### 🏭 Manufacturer
- Register new medical products
- Generate unique product codes
- Create initial blockchain entries
- Transfer products to suppliers
- Monitor product distribution

#### 🚚 Supplier
- Receive products from manufacturers
- Update blockchain with transport details
- Transfer products to retailers
- Track inventory and logistics

#### 🏪 Retailer/Shop
- Receive products from suppliers
- Sell products to customers
- Update final blockchain entries
- Customer management

#### 👤 Customer
- Purchase medical products
- Verify product authenticity
- Check expiry dates
- Access complete product history

#### 👨‍💼 Admin
- View complete blockchain
- Monitor system integrity
- User management and approval
- Generate system reports

## 🛠️ Technology Stack

### Backend
- **Python Flask**: Main application server
- **PHP**: Legacy web interface components
- **MySQL**: Database management
- **Custom Blockchain**: MD5 hash-based implementation

### Frontend
- **HTML5/CSS3**: User interface
- **Bootstrap 4**: Responsive design
- **JavaScript/jQuery**: Interactive elements
- **Font Awesome**: Icons and UI elements

### Security & Communication
- **Session Management**: Secure user authentication
- **Email Integration**: SMTP notifications
- **Public/Private Keys**: User verification system
- **Hash Chaining**: Blockchain integrity

## 📋 Prerequisites

- Python 3.7+
- MySQL Server 5.7+
- XAMPP/WAMP (for PHP components)
- Web browser (Chrome, Firefox, Safari)

## ⚙️ Installation & Setup

### 1. Clone Repository
```bash
git clone https://github.com/elahari16/Medical-products-supply-chain.git
cd Medical-products-supply-chain
```

### 2. Database Setup
```bash
# Start MySQL server
mysql -u root -p < setup_database.sql
# Or import supply_chain.sql via phpMyAdmin
```

### 3. Python Environment
```bash
# Install dependencies
pip install -r requirements.txt

# Run Flask application
python main.py
# Or use the batch file
run.bat
```

### 4. Access Application
- **Flask App**: http://localhost:5000
- **PHP Components**: Place in htdocs folder for XAMPP

## 🔐 Default Login Credentials

| Role | Username | Password |
|------|----------|----------|
| Admin | admin | admin |
| Manufacturer | company1 | 1234 |
| Supplier | supplier1 | 1234 |
| Retailer | shop1 | 1234 |
| Customer | murugan | 1234 |

## 📊 Database Schema

### Key Tables
- `sc_blockchain`: Blockchain records with hash chains
- `sc_product`: Complete product information and lifecycle
- `sc_company`: Manufacturer details
- `sc_supplier`: Supplier information
- `sc_shop`: Retailer/shop data
- `sc_customer`: Customer accounts
- `sc_admin`: System administrators

## 🔄 Workflow Process

1. **Manufacturing**: Product created → Initial blockchain entry
2. **Distribution**: Transfer to supplier → Blockchain update
3. **Retail**: Supplier to retailer → New blockchain record
4. **Sale**: Retailer to customer → Final blockchain entry
5. **Verification**: Customer verifies authenticity → Blockchain validation

## 🔒 Security Features

- **Immutable Records**: Blockchain prevents data tampering
- **Hash Verification**: MD5 hash chaining ensures integrity
- **User Authentication**: Role-based access control
- **Product Codes**: Unique identifiers for each product
- **Email Notifications**: Alerts for critical operations

## 📱 API Endpoints

### Flask Routes
- `/` - Home page
- `/login` - User authentication
- `/admin_home` - Admin dashboard
- `/man_home` - Manufacturer interface
- `/sup_home` - Supplier dashboard
- `/shop_home` - Retailer interface
- `/cus_home` - Customer portal

## 🧪 Testing

### Demo Mode
```bash
python start_without_db.py
```
Access demo at: http://localhost:5000

### Full Testing
1. Set up complete database
2. Create test users for each role
3. Test complete product lifecycle
4. Verify blockchain integrity

## 🔮 Future Scope & Enhancements

### Immediate Improvements
- **IoT Integration**: Temperature and humidity sensors for cold chain
- **Mobile Application**: Native iOS/Android apps
- **Advanced Analytics**: AI-powered insights and predictions
- **Multi-language Support**: Internationalization
- **Enhanced Security**: Two-factor authentication

### Advanced Features
- **Smart Contracts**: Ethereum blockchain integration
- **RFID/NFC Support**: Physical product tagging
- **Machine Learning**: Predictive analytics for demand forecasting
- **Regulatory Compliance**: FDA, WHO, and local health authority integration
- **Supply Chain Finance**: Automated payments and settlements

### Scalability Enhancements
- **Microservices Architecture**: Containerized deployment
- **Cloud Integration**: AWS/Azure deployment
- **Real-time Tracking**: GPS and IoT device integration
- **Blockchain Interoperability**: Cross-chain compatibility
- **Enterprise Integration**: ERP and CRM system connectivity

### Healthcare-Specific Features
- **Drug Interaction Checking**: Safety verification system
- **Batch Recall Management**: Automated recall notifications
- **Clinical Trial Tracking**: Research product monitoring
- **Regulatory Reporting**: Automated compliance reports
- **Patient Safety Alerts**: Real-time safety notifications

## 🤝 Contributing

1. Fork the repository
2. Create feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Team

- **Developer**: [Your Name]
- **Project Type**: Medical Supply Chain Management
- **Technology**: Blockchain, Python Flask, PHP, MySQL

## 📞 Support

For support and queries:
- Create an issue on GitHub
- Email: elahari16@gmail.com 
- Documentation: Check the `/docs` folder

## 🙏 Acknowledgments

- Bootstrap team for responsive framework
- Flask community for excellent documentation
- MySQL for robust database management
- Font Awesome for beautiful icons

---

**⚠️ Disclaimer**: This is a prototype system for educational and demonstration purposes. For production use in medical environments, ensure compliance with relevant healthcare regulations and standards.

**🔗 Repository**: https://github.com/elahari16/Medical-products-supply-chain
