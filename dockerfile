# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in container
WORKDIR /app

# copy the currrent directory contents into the container at /app
# badhu upadine nakho docker ni /app directory ma 
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 3000 available to the world outside this container
EXPOSE 8080

# Define environment variable
ENV FLASK_APP=app.py

# run the flask app
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]