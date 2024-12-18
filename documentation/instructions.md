# Setting Up the On-Prem EcoLoop Server for Windows

## Requirements
- **Docker**

---

## Running the Server

1. **Create a folder**:  
   Create a folder at `C:\DockerData`.
   
2. **Place required files**:  
   Copy the following files into the folder:
   - `.env.docker`
   - `wait-for.sh`
   - `docker-compose.onprem.yml`
   - `start_docker.bat`
   - `registerTask.ps1`
   - `startDocker.ps1`

3. **Start the server**:  
   Run `start_docker.bat`.

---

## Setting Up the Server to Start on Windows Login  

1. **Create a shortcut**:  
   Create a shortcut of `start_docker.bat` in the `DockerData` folder.

2. **Access the startup folder**:  
   Press `Windows + R` and type:
   - `shell:startup` (for the specific user)  
   - `shell:common startup` (for all users)  

3. **Add the shortcut to the startup folder**:  
   Copy the shortcut you created and paste it into the appropriate startup folder.

**Important**: Attempting to directly create the shortcut in the folder may not work. Follow the steps carefully for successful setup.

4. **Register Docker as a startup service**:  
   Run `registerTask.ps1` to register the Docker service to run on startup.

**Important**: Docker needs to be run in hyperv mode in order for auto start to work.

---

## Notes

### 1. Update `registerTask.ps1`
- Modify the line:
  ```powershell
  -Argument "-File C:\DockerData\startDocker.ps1"
  ```
  Update the path to point to your `startDocker.ps1` location.

- Change the following parameters:
  - **`-User`**: Set to your username.
  - **`-Password`**: Set to your password.
  - **`-Member`**: Update to your username.

---

### 2. Update `startDocker.ps1`
- Modify the paths for:
  - **Docker Desktop**  
  - **start_docker.bat**  

  Update them to reflect their actual locations if they differ.

---

### 3. Update `docker-compose.onprem.yml`
- In the `postgres` service configuration, modify the `pgdata` path to point to your desired location for storing PostgreSQL data.

---

### 4. Notes on `wait-for.sh`
- If `wait-for.sh` is not working:
  - Convert the file’s line endings using VS Code or a command-line tool.  
    The file provided in the `tools/onprem` folder is pre-configured for Windows.

- **Current Status**:  
  The script has been replaced with a health-check for PostgreSQL.

