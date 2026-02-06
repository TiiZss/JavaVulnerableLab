# Changelog

All notable changes to this project will be documented in this file.

## [2.0.0] - 2026-02-06
### Fixed
- **Docker Build**: Updated `Dockerfile` to use modern `maven` and `tomcat:9-jdk8` images, fixing build failures on newer Docker versions.
- **Docker Compose**: Fixed dependency ordering for MySQL.
- **XSS Challenges**:
    - Added `xss2.jsp`: Challenge 2 (Label Filters / Case Insensitivity).
    - Added `xss3.jsp`: Challenge 3 (Non-recursive Filters / Nested Tags).
- **Footer**: Updated footer to credit the 2026 fix release.

### Added
- GitHub workflows compatibility (via Docker).
- Modern documentation in README.
