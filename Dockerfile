# Pull base image

FROM python:3.5

# Set env variables
ENV PYTHONDONTWRITEBYTECODE 1
# Do dont write .pyc
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies

COPY Pipfile Pipfile.lock /code/
RUN pip3 install pipenv && pipenv install --system

# Copy Project
COPY . /code/
