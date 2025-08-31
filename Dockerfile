# Use official Python base image
FROM python:3.10-slim
  #This gives us a lightweight Linux image with Python pre-installed; 
  #if skipped, you’d have no Python in your container and it can’t run calculator.py.
  #Note: 
  #python:3.10 = full Python environment (bigger).
  #python:3.10-slim = stripped-down version (lighter, faster, but may need extra setup).

# Set working directory
WORKDIR /app
  #This sets a working folder inside the container where our code will live; 
  #if skipped, files may go to / root which is messy, still works, but bad practice.

# Copy calculator script into the container
COPY calculator.py .
  #This copies your Python file from the repository into the container; 
  #if skipped, the container builds but there is no calculator script inside, causing a runtime error.

# Run the calculator when the container starts
CMD ["python", "calculator.py"]
  #This defines the default command when the container runs; 
  #if skipped, the container builds but does nothing and you would need to run docker run <image> python calculator.py manually.
