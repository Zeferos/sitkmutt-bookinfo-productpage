FROM python:3.11-rc-bullseye

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .

CMD [ "python", "productpage.py", "8083" ]