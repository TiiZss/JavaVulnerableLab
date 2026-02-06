@echo off
if "%1"=="hub" (
    docker-compose -f docker-compose.hub.yml up -d
    goto :eof
)
if "%1"=="local" (
    docker-compose -f docker-compose.local.yml up -d --build
    goto :eof
)
echo Usage: start.bat [hub^|local]
