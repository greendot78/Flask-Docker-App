# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Set the working directory in the container
WORKDIR /python-docker

# Copy the current directory contents into the container at /app
COPY . /python-docker

# Install any needed packages specified in requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

# Run app.py when the container launches
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
# CMD ["python3", "app.py"]


# reference: https://www.freecodecamp.org/news/how-to-dockerize-a-flask-app/