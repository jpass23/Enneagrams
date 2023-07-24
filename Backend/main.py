from fastapi import FastAPI, HTTPException
from mangum import Mangum
from models import Enneagram
import data

app = FastAPI()
handler = Mangum(app)

@app.get("/")
def root():
    return {"message" : "Welcome to the root"}

@app.get("/enneagram/{number}")
def getEnneagram(number: int) -> Enneagram:
    return data.get(number)

@app.get("/enneagram/{number}/levels")
def getEnneagram(number: int, level: int = None) -> str:
    return data.get(number).levels[level]

@app.get("/enneagram/{number}/name")
def getEnneagram(number: int) -> str:
    return data.get(number).name

@app.get("/enneagram/{number}/fear")
def getEnneagram(number: int) -> str:
    return data.get(number).fear

@app.get("/enneagram/{number}/desire")
def getEnneagram(number: int) -> str:
    return data.get(number).desire

@app.get("/enneagram/{number}/descriptors")
def getEnneagram(number: int) -> list[str]:
    return data.get(number).descriptors
