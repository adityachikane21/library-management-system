# Library Management System — Public Deployment (Admin + User)

## Public architecture
Browser → React/Vite → Express API → MySQL

The root Dockerfile builds the frontend and serves it from Express, so Railway can expose one public HTTPS website.

## Demo accounts
**Admin**
- Email: `admin@library.com`
- Password: `admin123`

**User / Student**
- Email: `user@library.com`
- Password: `user123`

The login page has separate **Admin Login** and **User Login** tabs.

## Admin features
- Dashboard
- Books CRUD
- Members CRUD
- Issue / Return
- Fine calculation
- Transaction history

## User features
- Browse/search books
- See available copies
- See personal borrowing history
- See personal fines
- No access to admin CRUD or issue/return operations

## Railway deployment
1. Upload this complete folder to GitHub.
2. Create a Railway project.
3. Add a Railway MySQL service.
4. Add this GitHub repository as the application service.
5. Set these application variables:
   - `NODE_ENV=production`
   - `JWT_SECRET=<long-random-secret>`
   - `FINE_PER_DAY=5`
6. Deploy.
7. In the application service open **Settings → Networking → Generate Domain**.
8. Share the generated HTTPS URL with your teacher/users.

Railway supplies `MYSQLHOST`, `MYSQLPORT`, `MYSQLUSER`, `MYSQLPASSWORD`, and `MYSQLDATABASE`; the backend reads these automatically.

## Health check
`/api/health`

## Important
Do not put production secrets in GitHub. Change the demo passwords before real-world use.
