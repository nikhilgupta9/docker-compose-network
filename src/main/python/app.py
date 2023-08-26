#Server
from fastapi import FastAPI


#Server object
app = FastAPI()


#Endpoint
@app.get("/ping")
def pong():
    return {"ping": "pong!"}