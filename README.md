Day 5: Flutter Internship Task – Riverpod + Beamer Integration
Project Overview

This project demonstrates a production-ready Flutter app architecture using Riverpod for state management and Beamer for declarative routing. The focus is on:

Managing authentication state with Riverpod

Controlling navigation based on login state

Protecting routes with Beam guards

Clean separation of concerns (presentation, state, domain)

Responsive, reusable UI components

Folder Structure
lib/
│
├── core/                  # App-wide utilities, constants, themes, widgets
│   ├── constants/         # App constants, route names
│   ├── utils/             # Validators, helpers
│   ├── themes/            # Light & dark theme
│   └── widgets/           # Custom widgets like text fields, buttons
│
├── features/
│   ├── auth/              # Authentication feature
│   │   ├── data/          # Auth service (mocked)
│   │   ├── presentation/  # LoginPage & RegisterPage
│   │   └── state/         # AuthProvider
│   │
│   └── home/              # Home feature
│       ├── presentation/  # HomePage
│       └── state/         # Home-related state (if any)
│
├── providers/             # Global providers like theme, app state
│
├── routing/               # Beamer routing
│   ├── app_router.dart    # BeamerDelegate, location builder
│   ├── beam_locations/    # HomeLocation, LoginLocation
│   └── guards/            # AuthGuard
│
└── main.dart              # App entry point with ProviderScope

Features Implemented
1. Authentication

Mock login and registration

Validations:

Email format

Password strength (uppercase, lowercase, number, symbol)

Confirm password matching

Phone number: exactly 10 digits starting with 98

Reusable CustomTextField with live validation

2. Routing with Beamer

Declarative routing using BeamerDelegate

Guarded routes based on login state (AuthGuard)

Pages:

/login → LoginPage

/register → RegisterPage

/home → HomePage

Navigation control via Riverpod state

3. State Management with Riverpod

authProvider controls login state

Reactive navigation: Login → Home automatically

Global provider scope for app-wide state

4. UI & UX

Clean, responsive design

Custom reusable widgets for input fields and buttons

Back navigation implemented in registration page

Password visibility toggle

How to Run

Clone the repository

git clone <repo-url>
cd <project-folder>


Get dependencies

flutter pub get


Run the app

flutter run


Test the navigation:

Try logging in → should navigate to HomePage

Click “Create Account” → navigates to RegisterPage

Fill invalid inputs → validation messages appear

Fill valid inputs → registration success, back to login

Notes

The app uses mock authentication; no backend connection.

Designed for scalable production architecture:

Feature-based folder structure

Separation of UI, state, and business logic

Riverpod for reactive state handling

Beamer for declarative and guardable navigation
# day-5-Riverpod-Beamer-Integration
