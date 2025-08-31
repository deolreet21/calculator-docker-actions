# Use official Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy calculator script into the container
COPY calculator.py .

# Run the calculator when the container starts
CMD ["python", "calculator.py"]
