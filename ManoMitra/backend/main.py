from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from app.routers import users, mood, activities, content
from app.database import engine
from app import models

app = FastAPI()

# Create database tables
models.Base.metadata.create_all(bind=engine)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(users.router)
app.include_router(mood.router)
app.include_router(activities.router)
app.include_router(content.router)

@app.get("/")
async def root():
    return {"message": "Welcome to ManoMitra API"}

