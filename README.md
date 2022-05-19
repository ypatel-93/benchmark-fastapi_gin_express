# benchmark-fastapi_gin_express

## Test Report

```
Testing Fastapi
Concurrency 6
Iterations 100000
Rampup 0
Base URL http://localhost


FastAPI Fetch             Total requests            100000
FastAPI Fetch             Successful requests       100000
FastAPI Fetch             Failed requests           0
FastAPI Fetch             Median time per request   2069549ns
FastAPI Fetch             Average time per request  2387564ns
FastAPI Fetch             Sample standard deviation 4107261ns

Time taken for tests      40.1 seconds
Total requests            100000
Successful requests       100000
Failed requests           0
Requests per second       2496.50 [#/sec]
Median time per request   2069549ns
Average time per request  2387564ns
Sample standard deviation 4107261ns
 
Testing Gin
Concurrency 6
Iterations 100000
Rampup 0
Base URL http://localhost


Gin Fetch                 Total requests            100000
Gin Fetch                 Successful requests       100000
Gin Fetch                 Failed requests           0
Gin Fetch                 Median time per request   129887ns
Gin Fetch                 Average time per request  160926ns
Gin Fetch                 Sample standard deviation 307270ns

Time taken for tests      3.2 seconds
Total requests            100000
Successful requests       100000
Failed requests           0
Requests per second       30935.16 [#/sec]
Median time per request   129887ns
Average time per request  160926ns
Sample standard deviation 307270ns
 
Testing Express
Concurrency 6
Iterations 100000
Rampup 0
Base URL http://localhost


Express Fetch             Total requests            100000
Express Fetch             Successful requests       100000
Express Fetch             Failed requests           0
Express Fetch             Median time per request   750185ns
Express Fetch             Average time per request  895594ns
Express Fetch             Sample standard deviation 432752ns

Time taken for tests      15.2 seconds
Total requests            100000
Successful requests       100000
Failed requests           0
Requests per second       6579.38 [#/sec]
Median time per request   750185ns
Average time per request  895594ns
Sample standard deviation 432752ns
```

## Test Report Updates for Python

All test ran on python 3.9.12 on an AMD Ryzen 5 4600H CPU

```
Testing Fastapi

Concurrency 6
Iterations 100000
Rampup 0
Base URL http://localhost


FastAPI Fetch             Total requests            100000
FastAPI Fetch             Successful requests       100000
FastAPI Fetch             Failed requests           0
FastAPI Fetch             Median time per request   1778665ns
FastAPI Fetch             Average time per request  2084024ns
FastAPI Fetch             Sample standard deviation 982938ns

Time taken for tests      35.4 seconds
Total requests            100000
Successful requests       100000
Failed requests           0
Requests per second       2823.41 [#/sec]
Median time per request   1778665ns
Average time per request  2084024ns
Sample standard deviation 982938ns

---------------------------------------------------------------

Testing Fastapi with 6 Workers

Concurrency 6
Iterations 100000
Rampup 0
Base URL http://localhost


FastAPI Fetch             Total requests            100000
FastAPI Fetch             Successful requests       100000
FastAPI Fetch             Failed requests           0
FastAPI Fetch             Median time per request   782847ns
FastAPI Fetch             Average time per request  881412ns
FastAPI Fetch             Sample standard deviation 1493975ns

Time taken for tests      15.3 seconds
Total requests            100000
Successful requests       100000
Failed requests           0
Requests per second       6530.02 [#/sec]
Median time per request   782847ns
Average time per request  881412ns
Sample standard deviation 1493975ns


---------------------------------------------------------------

Testing Fastapi with Gunicorn (6 uvicorn workers)

Concurrency 6
Iterations 100000
Rampup 0
Base URL http://localhost


FastAPI Fetch             Total requests            100000
FastAPI Fetch             Successful requests       100000
FastAPI Fetch             Failed requests           0
FastAPI Fetch             Median time per request   771093ns
FastAPI Fetch             Average time per request  861980ns
FastAPI Fetch             Sample standard deviation 1307167ns

Time taken for tests      15.0 seconds
Total requests            100000
Successful requests       100000
Failed requests           0
Requests per second       6673.88 [#/sec]
Median time per request   771093ns
Average time per request  861980ns
Sample standard deviation 1307167ns

---------------------------------------------------------------

Testing BlackSheep

Concurrency 6
Iterations 100000
Rampup 0
Base URL http://localhost


Blacksheep Fetch          Total requests            100000
Blacksheep Fetch          Successful requests       100000
Blacksheep Fetch          Failed requests           0
Blacksheep Fetch          Median time per request   752407ns
Blacksheep Fetch          Average time per request  818050ns
Blacksheep Fetch          Sample standard deviation 398593ns

Time taken for tests      14.2 seconds
Total requests            100000
Successful requests       100000
Failed requests           0
Requests per second       7066.43 [#/sec]
Median time per request   752407ns
Average time per request  818050ns
Sample standard deviation 398593ns

---------------------------------------------------------------

Testing BlackSheep with 6 Workers

Concurrency 6
Iterations 100000
Rampup 0
Base URL http://localhost


Blacksheep Fetch          Total requests            100000
Blacksheep Fetch          Successful requests       100000
Blacksheep Fetch          Failed requests           0
Blacksheep Fetch          Median time per request   320161ns
Blacksheep Fetch          Average time per request  362133ns
Blacksheep Fetch          Sample standard deviation 257002ns

Time taken for tests      6.6 seconds
Total requests            100000
Successful requests       100000
Failed requests           0
Requests per second       15162.36 [#/sec]
Median time per request   320161ns
Average time per request  362133ns
Sample standard deviation 257002ns

---------------------------------------------------------------

Testing BlackSheep with Gunicorn (6 uvicorn workers)
Concurrency 6
Iterations 100000
Rampup 0
Base URL http://localhost


Blacksheep Fetch          Total requests            100000
Blacksheep Fetch          Successful requests       0
Blacksheep Fetch          Failed requests           100000
Blacksheep Fetch          Median time per request   195443ns
Blacksheep Fetch          Average time per request  210928ns
Blacksheep Fetch          Sample standard deviation 94456ns

Time taken for tests      6.4 seconds
Total requests            100000
Successful requests       0
Failed requests           100000
Requests per second       15595.05 [#/sec]
Median time per request   195443ns
Average time per request  210928ns
Sample standard deviation 94456ns

```
