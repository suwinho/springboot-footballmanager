# Football Manager - Spring Boot Demo

A lightweight **Football Manager** simulation game built with **Spring Boot 4**. This project allows users to manage football teams, browse player statistics, and simulate matches using a "FIFA 16" inspired live-simulation interface.

## 🚀 Features

- **Team Dashboard:** View your squad details, individual player stats, and club budget.
- **Advanced Match Engine:** A probability-based simulation that calculates outcomes using player offensive and defensive statistics.
- **FIFA 16 Style Live View:** A real-time match interface that displays events (goals, saves, cards) minute-by-minute.
- **In-Memory Database:** Powered by **H2**, with automatic data seeding through `import.sql`.

## 🛠 Tech Stack

- **Backend:** Java 25, Spring Boot 4 (Web, Data JPA, Thymeleaf)
- **Frontend:** HTML5, Thymeleaf, Tailwind CSS (via CDN)
- **Database:** H2 (In-Memory)
- **Utilities:** Lombok

## 📋 Prerequisites

- **JDK 21** or **25**
- **Maven** 3.8+

## ⚙️ Quick Start

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/suwinho/springboot-footballmanager.git](https://github.com/suwinho/springboot-footballmanager.git)
   cd springboot-footballmanager
   ```
2. **Build and run:**
   ```bash
   mvn spring-boot:run
   ```
3. **Explore:**
   - Main Menu: http://localhost:8080
   - Team Dashboard: http://localhost:8080/dashboard/1
   - Match Showcase: http://localhost:8080/match/simulate/1/2
   - H2 Console: http://localhost:8080/h2-console (JDBC URL: jdbc:h2:mem:footballmgr)
