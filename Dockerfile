FROM python:3.11-slim

WORKDIR /app

# Copy requirements from subdirectory
COPY app/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all app files
COPY app/ .

EXPOSE 5000

CMD ["python", "app.py"]
