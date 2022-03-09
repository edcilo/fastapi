FROM  python:3.10-alpine

ENV FASTAPI_ENV=production

WORKDIR /app

RUN /usr/local/bin/python -m pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY . .
RUN chmod a+rx ./start.sh

EXPOSE 8000

CMD ./start.sh
