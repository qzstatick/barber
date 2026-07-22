# API Documentation

## 1. Authorization

### Registration endpoints

Supported methods:
- Email
- Phone
- Google
- Apple ID

User fields:
```
Name
Photo
City
Role
```

---

## 2. Home Screen API

**Endpoint:**
```
GET /home
```

Display:
- Search
- Service categories
- Popular barbers
- Nearby coworking spaces
- Promotions

---

## 3. Search

### Barber Search

**Endpoint:**
```
GET /barbers/search
```

Filters:
- Name
- Rating
- Specialization
- Price
- Distance

### Coworking Search

Filters:
- District
- Chair price
- Available places

---

## 4. Barber Profile

**Endpoint:**
```
GET /barber/{id}
```

Data:
```
Photo
Name
Description
Experience
Specialization
Rating
Reviews
Services
Portfolio
Schedule
```

---

## 5. Portfolio

**Endpoints:**
```
POST /portfolio
GET /portfolio/{barber}
```

Barber can add:
- Photo
- Category
- Description

Categories:
```
Fade
Classic
Beard
Color
Long Hair
```

---

## 6. Services

**Model:**
```
Service

id
barber_id
name
duration
price
description
```

**Example:**
```
Fade haircut
45 minutes
35€
```

---

## 7. Booking

**Model:**
```
Booking

id
client_id
barber_id
service_id
date
time
status
```

**Statuses:**
```
pending
confirmed
completed
cancelled
```

**Endpoints:**

Create booking:
```
POST /booking
```

Get calendar:
```
GET /booking/calendar
```

---

## 8. Barber Calendar

Functions:
- Day view
- Week view
- Month view

Display example:
```
10:00 Ivan
12:00 Available
14:30 Sergey
```

---

## 9. Payment

Integration:
- Stripe
- PayPal
- Apple Pay
- Google Pay

Flow:
```
Booking
↓
Payment
↓
Confirmation
↓
Notification
```

---

## 10. Reviews

**Model:**
```
Review

id
client_id
barber_id
rating
text
created_at
```

After booking completion, client can:
- Set rating
- Write comment
- Add photo

---

## 11. Notifications

### Push Notifications

**For Clients:**
- Booking confirmed
- Reminder 24 hours before
- Cancellation

**For Barbers:**
- New booking
- Cancellation
- New review

Technology: Firebase Cloud Messaging

---

## 12. Barber Dashboard

### Dashboard Section

Show:
- Today's bookings
- Income
- Number of clients
- Rating

### Clients

```
Name
Last visit
Number of visits
History
```

### Portfolio (CRUD)

- Create
- Read
- Update
- Delete

### Services (CRUD)

```
Name
Price
Duration
```

### Schedule Settings

```
Working days
Start time
End time
Breaks
```

---

## 13. Coworking Module

### Profile

Fields:
```
Name
Photo
Address
Description
Number of chairs
Price
Rules
```

### Place Management

Example:
```
Chair 1 - Available
Chair 2 - Booked
```

---

## 14. Admin Panel

Functions:

**Users**
- View
- Block
- Edit

**Barbers**
- Verify
- Approve

**Content**
- Categories
- Complaints
- Reviews

---

## 15. Security

Requirements:
- HTTPS
- JWT authentication
- API protection
- Data encryption
- Role-based access control

---

## 16. Analytics

Track:
```
Registration
Barber search
Profile view
Booking creation
Payment
Repeat booking
```

Tools:
- Firebase Analytics
- Mixpanel
