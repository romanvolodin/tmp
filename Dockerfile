# syntax=docker/dockerfile:1
FROM python:3.8
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install --upgrade pip && pip3 install wheel && pip3 install -r requirements.txt
COPY . .
ENV TG_BOT_TOKEN=$TG_BOT_TOKEN
ENV TG_CHAT_ID=$TG_CHAT_ID
ENV DIALOGFLOW_PROJECT_ID=$DIALOGFLOW_PROJECT_ID
ENV GOOGLE_APPLICATION_CREDENTIALS=$GOOGLE_APPLICATION_CREDENTIALS
ENV VK_ACCESS_KEY=$VK_ACCESS_KEY
ENV LOGGING_LEVEL=$LOGGING_LEVEL
CMD python vk.py & python tg.py