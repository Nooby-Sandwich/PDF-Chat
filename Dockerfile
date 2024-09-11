# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory in the container
WORKDIR /app

# Update pip to the latest version
RUN pip install --upgrade pip

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN apt-get update && \
    apt-get install -y build-essential \
    && apt-get clean

RUN pip install --no-cache-dir -r requirements.txt --verbose

# Copy the current directory contents into the container at /app
COPY . /app/

# Make port 8501 available to the world outside this container
EXPOSE 8501

# Run streamlit when the container launches
CMD ["streamlit", "run", "app.py"]
