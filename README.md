# E-commerce

# E-Commerce Website

This is a full-stack e-commerce application built using **React, Node.js, Express, MariaDB, and Sequelize**.

## 🚀 Features
- User Authentication (Register, Login, Logout)
- Product Listings & Categories
- Shopping Cart & Checkout
- Order Management
- Admin Dashboard for Product & Order Management
- Responsive UI with React

## 🛠️ Tech Stack
- **Frontend:** React, Axios, CSS
- **Backend:** Node.js, Express, Sequelize (ORM)
- **Database:** MariaDB
- **Authentication:** JWT (JSON Web Tokens)
- **Deployment:** Linux (VPS), Nginx, PM2, GitHub Actions (CI/CD)

## 📂 Project Structure
```
E-commerce/
├── backend/      # Node.js + Express backend
│   ├── models/   # Database models (Sequelize)
│   ├── 
│   ├── 
│   ├── config/   # DB and server configs
│   └── server.js # Main backend entry
│
├── frontend/     # React frontend
│   ├── src/
│   │   ├── components/ # UI components
│   │   ├
│   │   
│   │   ├── App.js      # Root component
│   │   └── index.js    # React entry point
│   ├── public/
│   └── package.json
│
└── README.md     # Documentation
```

## 🔧 Installation & Setup
### 1️⃣ Clone the Repository
```sh
git clone https://github.com/jeevansudhagar/E-commerce.git
cd E-commerce
```

### 2️⃣ Backend Setup
```sh
cd backend
npm install
cp .env.example .env  # Configure your environment variables
npx sequelize db:migrate
npx sequelize db:seed:all
pm start  # Start backend server
```

### 3️⃣ Frontend Setup
```sh
cd ../frontend
npm install
npm run build  # Build for production
```

### 4️⃣ Run on Linux Server (VPS)
```sh
pm install -g pm2
pm2 start backend/server.js --name ecommerce-backend
pm2 save
pm2 startup
```
Configure **Nginx** to serve the frontend and proxy API requests.

## 🌍 Deployment with CI/CD (GitHub Actions)
1. Push changes to `main` branch
2. GitHub Actions will automatically deploy the latest code to the server

## 📝 API Documentation
- Base URL: `http://your-server-ip/api`
- Example Endpoints:
  - `GET /products` - Fetch all products
  - `POST /auth/register` - Register a new user
  - `POST /auth/login` - Authenticate user
  
## 📜 License
This project is open-source and available under the **MIT License**.

---

👨‍💻 Developed by [Jeeva](https://github.com/jeevansudhagar)
