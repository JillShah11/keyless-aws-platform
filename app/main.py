import os

from fastapi import FastAPI

APP_VERSION = os.getenv("APP_VERSION", "dev")

app = FastAPI(title="Keyless AWS Platform Demo")


@app.get("/health")
def health():
    return {"status": "ok", "version": APP_VERSION}