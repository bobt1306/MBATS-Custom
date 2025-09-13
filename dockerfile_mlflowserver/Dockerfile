FROM python:3.9-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    && rm -rf /var/lib/apt/lists/*

# Copy and install requirements
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
