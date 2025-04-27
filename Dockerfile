# Use official Python image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements and install
COPY app/requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY app/ .

# Expose Flask port
EXPOSE 5000

# Command to run Flask app
CMD ["python", "app.py"]
