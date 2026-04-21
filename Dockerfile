# Use a minimal Python image as the base
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

ENV PORT=5000

# Copy dependency files and install them
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code and templates
COPY . ./

# Expose the port the Flask app will listen on
EXPOSE ${PORT}

# Command to run the application
CMD ["python", "app.py"]