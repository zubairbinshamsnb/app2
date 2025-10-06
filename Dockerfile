# Use an official Python runtime as a base image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app source code into the container
COPY app.py .

# Expose port 7000 to the host
EXPOSE 8000

# Run the application
CMD ["python", "app.py"]
