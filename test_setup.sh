# This script needs to be run from benchmark-fastapi_gin_express directory

echo "Setting up FastAPI"
python3 -m venv fastapi_app/.venv
echo "Install FastAPI and Uvicorn"
fastapi_app/.venv/bin/pip install fastapi uvicorn
echo "FastAPI setup success"

echo ""

echo "Setting up Gin"
cd gin_app
go mod init gin_app
go get -u github.com/gin-gonic/gin
cd ..
echo "Gin setup success"

echo ""

echo "Setting up Express"
cd express_app
npm init
npm install express
cd ..
echo "Express setup success"

echo ""

echo "Setting up Drill"
cargo install drill
echo "Drill setup success"
