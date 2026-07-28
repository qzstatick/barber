backend/
├── app/
│   ├── api/
│   │   ├── auth/
│   │   │   ├── register/
│   │   │   │   ├── email/route.ts
│   │   │   │   ├── phone/route.ts
│   │   │   │   ├── google/route.ts
│   │   │   │   └── apple/route.ts
│   │   │   ├── login/route.ts
│   │   │   ├── refresh/route.ts
│   │   │   └── me/route.ts
│   │   │
│   │   ├── home/route.ts
│   │   │
│   │   ├── barbers/
│   │   │   ├── search/route.ts
│   │   │   ├── [id]/route.ts
│   │   │   ├── services/route.ts
│   │   │   └── reviews/route.ts
│   │   │
│   │   ├── portfolio/
│   │   │   ├── route.ts
│   │   │   └── [barber]/route.ts
│   │   │
│   │   ├── bookings/
│   │   │   ├── route.ts
│   │   │   ├── calendar/route.ts
│   │   │   └── [id]/route.ts
│   │   │
│   │   ├── payments/
│   │   │   ├── stripe/route.ts
│   │   │   ├── paypal/route.ts
│   │   │   └── webhook/route.ts
│   │   │
│   │   ├── reviews/
│   │   │   └── route.ts
│   │   │
│   │   ├── notifications/
│   │   │   ├── push/route.ts
│   │   │   └── token/route.ts
│   │   │
│   │   ├── dashboard/
│   │   │   ├── stats/route.ts
│   │   │   ├── clients/route.ts
│   │   │   ├── services/route.ts
│   │   │   ├── portfolio/route.ts
│   │   │   └── schedule/route.ts
│   │   │
│   │   ├── coworking/
│   │   │   ├── search/route.ts
│   │   │   ├── profile/route.ts
│   │   │   └── chairs/route.ts
│   │   │
│   │   ├── admin/
│   │   │   ├── users/route.ts
│   │   │   ├── barbers/route.ts
│   │   │   ├── complaints/route.ts
│   │   │   ├── categories/route.ts
│   │   │   └── reviews/route.ts
│   │   │
│   │   └── analytics/route.ts
│   │
│   ├── layout.tsx
│   └── page.tsx
│
├── lib/
│   ├── auth.ts
│   ├── jwt.ts
│   ├── stripe.ts
│   ├── firebase.ts
│   ├── paypal.ts
│   ├── prisma.ts
│   └── analytics.ts
│
├── middleware.ts
│
├── types/
│   ├── auth.ts
│   ├── barber.ts
│   ├── booking.ts
│   ├── coworking.ts
│   ├── payment.ts
│   ├── review.ts
│   ├── service.ts
│   └── user.ts
│
├── prisma/
│   └── schema.prisma
│
├── utils/
│   ├── response.ts
│   ├── validation.ts
│   └── roles.ts
│
├── .env.example
├── next.config.ts
├── tsconfig.json
└── package.json
