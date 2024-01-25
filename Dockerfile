FROM python:3

ENV API_ID=25187275
ENV API_HASH=580d9ca6094c8c59d7f43b340ce4c289

RUN apt update && apt upgrade -y; apt-get install git curl zip neofetch ffmpeg -y

WORKDIR /app

COPY . .

RUN pip3 install --no-cache-dir -r req*

CMD ["bash", "start.sh"]
