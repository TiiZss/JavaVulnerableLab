# AI Context: JavaVulnerableLab (Fixed 2026 Edition)

## Project Overview
This project is a **Vulnerable Java Web Application** designed for educational purposes (Cybersecurity). It is a fork of the original CSPF project, modernized by TiiZss for 2026 environments.

**Local Path:** `d:\Scripts\JavaVulnerableLab`
**Remote Repository:** `https://github.com/TiiZss/JavaVulnerableLab` (Note: Remote may lag behind local changes).

## Key Objectives
The primary goal is to provide a containerized environment to practice exploitation, specifically:
*   **XSS Reto 2 (Label Filters):** Bypassing case-sensitive or blocklist-based tag filters.
*   **XSS Reto 3 (Non-recursive):** Bypassing filters that remove tags only once (nested tags).

## Technology Stack
*   **Language:** Java 8 (JDK 1.8)
*   **Web Server:** Apache Tomcat 9.0 (via Docker)
*   **Build Tool:** Maven 3 (via Docker)
*   **Frameworks:**
    *   JSP / Servlets (Legacy 2.3 spec)
    *   Hibernate 4.0.1
    *   JSTL 1.2
*   **Database:** MySQL 5.1 (managed via `docker-compose`)
*   **Infrastructure:** Docker & Docker Compose

## Repository Structure
*   `src/main/webapp`: Contains the frontend code (JSP) and web configuration (`WEB-INF/web.xml`). **Vulnerability logic is often found here in JSP files.**
*   `src/main/java`: Contains the backend logic (Java Servlets, Hibernate entities).
*   `Dockerfile`: Multi-stage build (Maven builder -> Tomcat runner).
*   `docker-compose.yml`:Orchestrates the Web App and Database.

## How to Run
The project is designed to run entirely in Docker.

```bash
docker-compose up -d --build
```

**URL:** `http://localhost:8080/JavaVulnerableLab`

## Critical Notes for AI Agents
1.  **Do not modify legitimate vulnerabilities:** The "bugs" are features. Ensure challenges remain exploitable.
2.  **Legacy Dependencies:** The project intentionally uses old libraries (e.g., MySQL driver 5.1, Servlet 2.3). Do not upgrade them unless correcting a *runtime environment* failure (like the recent Tomcat fix).
3.  **Modern Fixes:** The `Dockerfile` and `docker-compose.yml` are modernized to ensure the app *runs* in 2026, even if the app code is old.
