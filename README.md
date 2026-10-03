# Library Management System — Working Full-Stack Project

A college-ready Library Management System built with React, Node.js, Express and MySQL.

## Modules
- Admin login with JWT authentication
- Dashboard statistics and recent transactions
- Book CRUD + search
- Member CRUD + search
- Book issue and return
- Automatic overdue fine calculation (default ₹5/day)
- Transaction history + status/search filters
- Validation and protected API routes

## Requirements
- Node.js 18+
- MySQL 8+ (or compatible MySQL server)
- Windows: use the included `.bat` files

## 1. Database setup
Run `setup-database.bat`, or manually run `database/library.sql` in MySQL.

The SQL creates the `library_management` database and sample data.

## 2. Configure backend
Copy `backend/.env.example` to `backend/.env` and set your MySQL password:

DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_mysql_password
DB_NAME=library_management
JWT_SECRET=change_this_secret
FINE_PER_DAY=5

## 3. Install dependencies
From the backend folder:
`npm install`

From the frontend folder:
`npm install`

## 4. Run
Backend:
`cd backend && npm start`

Frontend:
`cd frontend && npm run dev`

Open: http://localhost:5173

## Demo login
Email: admin@library.com
Password: admin123

The backend securely resets/creates the demo admin password on startup, so the demo login works even after a fresh database import.

## API
- POST `/api/auth/login`
- GET `/api/dashboard`
- GET/POST/PUT/DELETE `/api/books`
- GET/POST/PUT/DELETE `/api/members`
- GET/POST `/api/transactions`
- PUT `/api/transactions/:id/return`
- GET `/api/health`
