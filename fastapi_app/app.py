import uvicorn
from fastapi import FastAPI

app = FastAPI()


@app.get("/test/")
async def root():
    return {"status": 200, "message": "success"}


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8001, debug=False, access_log=False)
