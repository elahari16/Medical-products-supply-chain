from flask import Flask, render_template, redirect, request, session, url_for
from datetime import date
import datetime
from flask_mail import Mail, Message
import hashlib

app = Flask(__name__)
app.secret_key = 'abcdef'

# Email configuration
mail_settings = {
    "MAIL_SERVER": 'smtp.gmail.com',
    "MAIL_PORT": 465,
    "MAIL_USE_TLS": False,
    "MAIL_USE_SSL": True,
    "MAIL_USERNAME": "your_email@gmail.com",
    "MAIL_PASSWORD": "your_password"
}

app.config.update(mail_settings)
mail = Mail(app)

@app.route('/')
def index():
    return '''
    <h1>Supply Chain Management System</h1>
    <p>Welcome to the Blockchain-based Supply Chain Management System</p>
    <h2>Demo Mode - Database Not Connected</h2>
    <ul>
        <li><a href="/demo">View Demo Interface</a></li>
        <li><a href="/about">About the System</a></li>
    </ul>
    <p><strong>To run with full functionality:</strong></p>
    <ol>
        <li>Install and start MySQL server</li>
        <li>Import the supply_chain.sql database</li>
        <li>Run: python main.py</li>
    </ol>
    '''

@app.route('/demo')
def demo():
    return '''
    <h1>Supply Chain Demo Interface</h1>
    <h2>User Roles:</h2>
    <ul>
        <li><strong>Manufacturer:</strong> Creates products and adds them to blockchain</li>
        <li><strong>Supplier:</strong> Receives products from manufacturers</li>
        <li><strong>Retailer:</strong> Receives products from suppliers</li>
        <li><strong>Customer:</strong> Purchases and verifies products</li>
        <li><strong>Admin:</strong> Views complete blockchain</li>
    </ul>
    <h2>Blockchain Features:</h2>
    <ul>
        <li>Product tracking from manufacture to sale</li>
        <li>Hash-based integrity verification</li>
        <li>Immutable transaction records</li>
        <li>Product authenticity verification</li>
    </ul>
    <a href="/">Back to Home</a>
    '''

@app.route('/about')
def about():
    return '''
    <h1>About Supply Chain Management System</h1>
    <p>This system implements blockchain technology for supply chain transparency.</p>
    <h2>Key Features:</h2>
    <ul>
        <li>Blockchain-based product tracking</li>
        <li>Multi-role user management</li>
        <li>Product lifecycle management</li>
        <li>Email notifications</li>
        <li>Product verification system</li>
    </ul>
    <a href="/">Back to Home</a>
    '''

if __name__ == '__main__':
    print("Starting Supply Chain Management System in Demo Mode...")
    print("Access the application at: http://localhost:5000")
    app.run(host='0.0.0.0', debug=True, port=5000)