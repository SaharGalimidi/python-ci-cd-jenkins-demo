FROM python:3.9-slim 

WORKDIR /app  # Set working directory

COPY requirements.txt requirements.txt  
RUN pip install -r requirements.txt 

# Copy all files from current directory to working directory
COPY . .

 # Expose port for Flask app
EXPOSE 5000 

CMD ["python", "app/first_ci_cd.py"]  # Start the app
