# Use an official Python runtime as a parent image
FROM python:3.10.1-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt

RUN pip install tensorflow streamlit keras numpy keras-nlp

# Expose port 5000 to the world outside this container
EXPOSE 8501

# Run main.py when the container launches
CMD ["streamlit", "run", "app.py"]