# Java Vulnerable Lab (Fixed 2026 Edition)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Docker Image](https://img.shields.io/badge/Docker-Ready-blue.svg)](https://www.docker.com/)
[![Fixed by TiiZss](https://img.shields.io/badge/Fixed%20by-TiiZss-green.svg)](https://github.com/TiiZss)

<a href="https://www.buymeacoffee.com/TiiZss" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

## Overview

This is a fork of the original "Vulnerable" Web Application developed by **Cyber Security and Privacy Foundation** (www.cysecurity.org). We have updated and fixed it to work seamlessly in 2026 environments.

**Original Repository:** [CSPF-Founder/JavaVulnerableLab](https://github.com/CSPF-Founder/JavaVulnerableLab)

### Key Updates & Fixes (2026)
- **Containerization**: Fully fixed `Dockerfile` and `docker-compose.yml` to support modern Docker environments.
    - Switched to `maven:3-jdk-8` for building.
    - Switched to `tomcat:9.0-jdk8` for runtime stability.
- **XSS Challenges**: 
    - **Reto 2 (Fixed)**: Implemented missing "Label Filters" challenge (`xss2.jsp`), allowing bypass techniques.
    - **Reto 3 (Fixed)**: Implemented missing "Non-recursive Filters" challenge (`xss3.jsp`), testing nested tag payloads.
- **Footer**: Updated copyright information.

## How to Use

### Quick Start with Docker (Recommended)
1. Install Docker and Docker Compose.
2. Clone this repository:
   ```bash
   git clone https://github.com/TiiZss/JavaVulnerableLab.git
   cd JavaVulnerableLab
   ```
3. Run the container:
   ```bash
   docker-compose up -d --build
   ```
4. Access the lab at: `http://localhost:8080/JavaVulnerableLab`

### XSS Challenges
Navigate to `http://localhost:8080/JavaVulnerableLab/vulnerability/xss/` to access the challenges.
- **Reto 2:** Try to evade filter using `<SCRIPT>` or `<img onerror>`.
- **Reto 3:** Try "nested" payloads like `<scr<script>ipt>`.

## Original Description
This app is intended for Java Programmers and other people who wish to learn about Web application vulnerabilities and write secure code.

**Warning**: Don't run this app in Your Main Machine or in an online server. Install it in a Virtual Machine or Container.
