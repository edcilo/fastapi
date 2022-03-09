from fastapi import Depends, FastAPI
from .routers import about


app = FastAPI()


app.include_router(about.router)
