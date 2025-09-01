# Use lightweight Python image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements from nested folder
COPY main/app/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY main/app/ .

# Expose Flask port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
