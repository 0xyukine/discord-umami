FROM python:3

RUN pip install --upgrade pip && \
    pip install --no-cache-dir discord.py \
    pip install --no-cache-dir -U python-dotenv

COPY umami.py .
copy .env .

CMD python3 umami.py
