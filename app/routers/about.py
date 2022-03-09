from fastapi import APIRouter


router = APIRouter()


@router.get("/api/v1/messaging/about")
async def about():
    return {"version": "0.0.1"}

