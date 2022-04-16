
echo "-------- Starting Fastapi Server --------"
fastapi_app/.venv/bin/python fastapi_app/app.py &
sleep 3
fastapi_pid=$(ps aux | grep 'fastapi_app/.venv/bin/python fastapi_app/app.py' | grep -v grep | awk {'print $2'} | xargs)
echo "-------- Benchmarking Fastapi --------"
drill --benchmark fastapi_app/fastapi.yaml -q -n --stats
echo "-------- Stoping Fastapi Server --------"
kill -9 $fastapi_pid

sleep 3
echo " " 

echo "-------- Starting Gin Server --------"
cd gin_app
go run app.go &
sleep 3
go_pid=$(ps aux | grep '/tmp/go-build' | grep -v grep | awk {'print $2'} | xargs)
echo "-------- Benchmarking Gin --------"
drill --benchmark gin.yaml -q -n --stats
echo "-------- Stoping Gin Server --------"
kill -9 $go_pid
cd ..

sleep 3
echo " "

echo "-------- Starting Express Server --------"
node express_app/app.js &
sleep 3
express_pid=$(ps aux | grep 'node express_app/app.js' | grep -v grep | awk {'print $2'} | xargs)
echo "-------- Benchmarking Express --------"
drill --benchmark express_app/express.yaml -q -n --stats
echo "-------- Stoping Express Server --------"
kill -9 $express_pid

