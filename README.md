# Afridu

Afridu is my student Learning Management System (LMS) project.

The goal of this project is to build a clean and practical platform where learners can browse courses, track progress, and stay consistent with their learning goals.


## Main Features

- User authentication (email/password and social login through Clerk)
- Protected dashboard pages
- Browse and explore available courses
- Course details pages with dynamic routes
- Progress tracking section
- Community page for learner interaction
- Responsive design for desktop and mobile



## Setting up the Project
### Prerequisites

- Node.js (v16 or higher)
- npm
- API Key from Clerk for Google Authentication

### Installation

1. Clone the repository:
```bash
git clone https://github.com/kamalafidele/afridu-app.git
cd afridu-app
```

2. Install dependencies:
```bash
npm install
```

3. Set up environment variables:
```bash
cp .env.example .env
```

4. Update `.env` with your actual configuration values

5. Start the development server:
```bash
npm run dev
```

The application will be available at `http://localhost:3000`