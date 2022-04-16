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
