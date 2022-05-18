
echo "-------- Starting Fastapi Server --------"
fastapi_app/.venv/bin/python fastapi_app/app.py &
sleep 3
fastapi_pid=$(ps aux | grep 'fastapi_app/.venv/bin/python fastapi_app/app.py' | grep -v grep | awk {'print $2'} | xargs)
echo "-------- Benchmarking Fastapi --------"
drill --benchmark fastapi_app/fastapi.yaml -q -n --stats
echo "-------- Stoping Fastapi Server --------"
kill $fastapi_pid

sleep 3
echo " " 

echo "-------- Starting Fastapi Server with Workers --------"
fastapi_app/.venv/bin/uvicorn app:app --port 8001 --workers 6 --no-access-log --app-dir fastapi_app &
sleep 3
fastapiw_pid=$(ps aux | grep 'fastapi_app/.venv/bin/uvicorn app:app --port 8001 --workers 6 --no-access-log --app-dir fastapi_app' | grep -v grep | awk {'print $2'} | xargs)
echo "-------- Benchmarking Fastapi with Workers --------"
drill --benchmark fastapi_app/fastapi.yaml -q -n --stats
echo "-------- Stoping Fastapi Server --------"
kill $fastapiw_pid

sleep 3
echo " " 


echo "-------- Starting Fastapi Server with Gunicorn --------"
fastapi_app/.venv/bin/gunicorn -b :8001 -w 6 -k uvicorn.workers.UvicornWorker --chdir fastapi_app app:app &
sleep 3
fastapig_pid=$(ps aux | grep 'fastapi_app/.venv/bin/gunicorn -b :8001 -w 6 -k uvicorn.workers.UvicornWorker --chdir fastapi_app app:app' | grep -v grep | awk {'print $2'} | xargs)
echo "-------- Benchmarking Fastapi with Gunicorn --------"
drill --benchmark fastapi_app/fastapi.yaml -q -n --stats
echo "-------- Stoping Fastapi Server --------"
kill $fastapig_pid

sleep 3
echo " " 

echo "-------- Starting BlackSheep Server --------"
blacksheep_app/.venv/bin/python blacksheep_app/app.py &
sleep 3
blacksheep_pid=$(ps aux | grep 'blacksheep_app/.venv/bin/python blacksheep_app/app.py' | grep -v grep | awk {'print $2'} | xargs)
echo "-------- Benchmarking BlackSheep --------"
drill --benchmark blacksheep_app/blacksheep.yaml -q -n --stats
echo "-------- Stoping BlackSheep Server --------"
kill $blacksheep_pid

sleep 3
echo " " 

echo "-------- Starting BlackSheep Server with Workers --------"
blacksheep_app/.venv/bin/uvicorn app:app --port 44777 --workers 6 --no-access-log --app-dir blacksheep_app &
sleep 3
blacksheepw_pid=$(ps aux | grep 'blacksheep_app/.venv/bin/uvicorn app:app --port 44777 --workers 6 --no-access-log --app-dir blacksheep_app' | grep -v grep | awk {'print $2'} | xargs)
echo "-------- Benchmarking BlackSheep with Workers --------"
drill --benchmark blacksheep_app/blacksheep.yaml -q -n --stats
echo "-------- Stoping Fastapi Server --------"
kill $blacksheepw_pid

sleep 3
echo " " 

echo "-------- Starting BlackSheep Server with Gunicorn --------"
blacksheep_app/.venv/bin/gunicorn -b :8001 -w 6 -k uvicorn.workers.UvicornWorker --chdir blacksheep_app app:app &
sleep 3
blacksheepg_pid=$(ps aux | grep 'blacksheep_app/.venv/bin/gunicorn -b :8001 -w 6 -k uvicorn.workers.UvicornWorker --chdir blacksheep_app app:app' | grep -v grep | awk {'print $2'} | xargs)
echo "-------- Benchmarking Blacksheep with Gunicorn --------"
drill --benchmark blacksheep_app/blacksheep.yaml -q -n --stats
echo "-------- Stoping BlackSheep Server --------"
kill $blacksheepg_pid

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

