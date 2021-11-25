FROM python:3.9-slim

WORKDIR /usr/src/app
ENV PYTHONUNBUFFERED 1
EXPOSE 8000

COPY requirements.txt .
RUN pip3 install gunicorn
RUN pip3 install -r requirements.txt

COPY . .

CMD ["gunicorn", "stocks_products.wsgi", "-w", "4", "-t", "600", "-b", "0.0.0.0:8000"]