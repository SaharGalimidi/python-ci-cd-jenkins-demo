FROM python:3.9-slim 

# Copy all files from current directory to working directory
COPY . .

RUN pip install -r requirements.txt 


 # Expose port for Flask app
EXPOSE 5000 

CMD ["python", "first_ci_cd.py"]  # Start the app
