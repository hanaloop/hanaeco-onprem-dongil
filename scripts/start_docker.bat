@echo off

REM Check if the folder C:\DockerData\pgdata exists
IF NOT EXIST "C:\DockerData\pgdata" (
    echo "Folder C:\DockerData\pgdata does not exist. Creating it now..."
    mkdir "C:\DockerData\pgdata"
    echo "Folder created successfully."
) ELSE (
    echo "Folder C:\DockerData\pgdata already exists."
)

echo Starting Docker Compose
docker compose --env-file .env.docker -f C:\DockerData\docker-compose.onprem.yml up

