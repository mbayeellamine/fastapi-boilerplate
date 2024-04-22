# FastAPI Project

This is a template for a FastAPI project with MySQL database setup, sample API endpoints, and basic service implementation.

## Project Structure

- `app`: Main directory containing the FastAPI application code.
  - `api`: Directory for API routers.
    - `router.py`: Main router to include all API routers.
    - `sample.py`: Sample API endpoints.
  - `info`: Directory for application configuration.
    - `appconfig.py`: Application configuration file (empty by default).
  - `models`: Directory for database models and database setup.
    - `database.py`: Database setup and connection code.
  - `services`: Directory for service implementations.
    - `sample_service.py`: Basic service implementation for sample API endpoints.
  - `utils`: Directory for utility modules (empty by default).
  - `main.py`: Main FastAPI application file.
- `tests`: Directory containing test cases.
  - `test_main.py`: Test cases for the main FastAPI application.
- `docs`: Directory for project documentation (empty by default).
- `.env`: Environment variables configuration file.
- `README.md`: Project README file.
- `requirements.txt`: File containing project dependencies.

## Usage

### Setup

1. Create a virtual environment:

```bash
python3 -m venv fastapi-env
source fastapi-env/bin/activate
```

Step1 : Provide the script with suitable permission

``` chmod +x /in/the/path/of/schema.sh  ```

Step 2 : RUN the sh file 

``` ./schema.sh```

The script will automatically create the necessary folders and files, establishing the boilerplate for your FastAPI project.

## Getting Started
After running the shell script and setting up the folder structure, you can start developing your FastAPI project right away. Refer to the generated main.py file and the provided examples in each folder to understand how to structure your code and create API endpoints efficiently.

Feel free to contribute to this project by opening issues or pull requests.