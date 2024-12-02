# Build Stage
FROM python:3.11-slim AS build

# Set working directory to /app
WORKDIR /app

# Install dependencies listed in requirements.txt
RUN pip install -r requirements.txt

# Copy python.py specifically (only if python.py is a separate file, 
# otherwise it is already included in the previous COPY command)
COPY . .

# Expose port 5000 for the app to run
EXPOSE 5000

# Define the command to run the application
CMD ["python", "python.py"]

