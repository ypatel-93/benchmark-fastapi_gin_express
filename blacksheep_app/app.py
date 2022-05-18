import uvicorn
from blacksheep import Application


app = Application()

@app.route("/test/")
async def root():
    return {"status": 200, "message": "success"}

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=44777, debug=False, access_log=False)