@echo off
if "%1"=="hub" (
    docker-compose -f docker-compose.hub.yml down
    goto :eof
)
if "%1"=="local" (
    docker-compose -f docker-compose.local.yml down
    goto :eof
)
echo Usage: stop.bat [hub^|local]
