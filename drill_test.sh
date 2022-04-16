
echo "Testing Fastapi"
drill --benchmark fastapi_app/fastapi.yaml -q -n --stats

echo " "
echo "Testing Gin"
drill --benchmark gin_app/gin.yaml -q -n --stats

echo " "
echo "Testing Express"
drill --benchmark express_app/express.yaml -q -n --stats
