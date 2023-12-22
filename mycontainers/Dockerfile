FROM debian:latest

RUN apt update && apt install iputils-ping -y
WORKDIR /app
RUN useradd clementine
USER clementine

COPY Testfile /app/

CMD [ "/app/Testfile" ]
