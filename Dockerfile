FROM python:3.8.12-bullseye

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .

CMD [ "python", "productpage.py", "8083" ]