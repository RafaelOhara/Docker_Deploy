FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /code

# 1. Copy the requirements file directly from the root
COPY ./requirements.txt /code/requirements.txt

# 2. Install dependencies
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# 3. Copy the main application file directly from the root
COPY ./main.py /code/main.py

# 4. Define the command to run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]