mkdir myapp 
cd myapp 
mkdir app tests docs
touch .env README.md requirements.txt
cd app
mkdir api info models services utils
touch __init__.py main.py 
cd api 
touch __init__.py
cd ..
cd info
touch __init__.py appconfig.py
cd ..
cd models
touch __init__.py database.py 
cd ..
cd services
touch __init__.py sample_service.py
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
mysql-connector-python
dotenv
EOF

cat << EOF >> .env
MYSQL_USER=root
MYSQL_PASSWORD=password
MYSQL_HOST=localhost
MYSQL_PORT=3306
MYSQL_DATABASE=myapp_db
EOF

cat << EOF >> app/main.py
# Unique Identifier: FASTAPI_APP_123
from fastapi import FastAPI
from dotenv import load_dotenv
from app.api import router as api_router
from app.info import appconfig
from app.models.database import create_database, engine

# Load environment variables from .env file
load_dotenv()

# Create the database if it does not exist
create_database()

app = FastAPI()

# Include routers
app.include_router(api_router)

# Basic route
@app.get("/")
async def read_root():
    return {"message": "Hello World"}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)
EOF

cat << EOF >> app/models/database.py
from sqlalchemy import create_engine
from sqlalchemy_utils import database_exists, create_database
import os

# Load environment variables from .env file
from dotenv import load_dotenv
load_dotenv()

DATABASE_URL = f"mysql+mysqlconnector://{os.getenv('MYSQL_USER')}:{os.getenv('MYSQL_PASSWORD')}@{os.getenv('MYSQL_HOST')}:{os.getenv('MYSQL_PORT')}/{os.getenv('MYSQL_DATABASE')}"

engine = create_engine(DATABASE_URL)

def create_database():
    if not database_exists(engine.url):
        create_database(engine.url)
EOF

cat << EOF >> app/info/appconfig.py
# You can add your application configuration here
EOF

cat << EOF >> app/api/router.py
from fastapi import APIRouter
from app.api.sample import router as sample_router

router = APIRouter()

router.include_router(sample_router, prefix="/sample", tags=["sample"])
EOF

cat << EOF >> app/api/sample.py
from fastapi import APIRouter

router = APIRouter()

@router.get("/")
async def read_samples():
    return {"message": "List of samples"}

@router.get("/{sample_id}")
async def read_sample(sample_id: int):
    return {"message": f"Sample with ID {sample_id}"}
EOF

cat << EOF >> app/services/sample_service.py
class SampleService:
    def get_samples(self):
        return [{"id": 1, "name": "Sample 1"}, {"id": 2, "name": "Sample 2"}]

    def get_sample_by_id(self, sample_id: int):
        return {"id": sample_id, "name": f"Sample {sample_id}"}
EOF

cat << EOF >> tests/test_main.py
from fastapi.testclient import TestClient
from app.main import app

client = TestClient(app)

def test_read_main():
    response = client.get("/")
    assert response.status_code == 200
    assert response.json() == {"message": "Hello World"}

def test_read_samples():
    response = client.get("/sample/")
    assert response.status_code == 200
    assert response.json() == {"message": "List of samples"}

def test_read_sample_by_id():
    response = client.get("/sample/1")
    assert response.status_code == 200
    assert response.json() == {"message": "Sample with ID 1"}
EOF
