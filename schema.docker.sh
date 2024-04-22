mkdir myapp 
cd myapp 
mkdir app tests docs
touch .env README.md  requirements.txt Dockerfile docker-compose.yml
cd app
mkdir api info models services utils
touch __init__.py database.py main.py 
cd api 
touch __init__.py
cd ..
cd info
touch __init__.py appconfig.py
cd ..
cd models
touch __init__.py 
cd ..
cd services
touch __init__.py
cd ..
cd utils
touch __init__.py 
cd ../..

cat << EOF >> README.md
Command to Run the FastAPI

STEP1: Create virtual environment

python3 -m venv fastapi-env
source fastapi-env/bin/activate

STEP2: Install the requirements inside the virtual environment

pip3 install -r requirements.txt

STEP3: To Run the project

uvicorn main:app --reload

STEP4: Swagger UI available in Below path after the app is started successfully

http://127.0.0.1:8000/docs
EOF

cat << EOF >> requirements.txt
fastapi
uvicorn
uvloop
EOF

cat << EOF >> Dockerfile
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.12-alpine

COPY ./app /app
RUN pip install --no-cache-dir -r /app/requirements.txt

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
EOF

cat << EOF >> docker-compose.yml
version: "3.9"

services:
  app:
    build: .
    ports:
      - "8000:8000"
    volumes:
      - ./app:/app
EOF
