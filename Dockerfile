# This is the first instruction and defines the base image
FROM python:3.13-alpine3.23

#sets the working directory for all subsequent RUN, COPY, and CMD instructions
WORKDIR sample_app 

# Application's dependency definition file(s) (e.g., package.json, requirements.txt) are copied into the image first. 
COPY sample_app .

# Executes the command that actually installs the dependencies within the container's file system 
RUN pip install -r requirements.txt

# this instruction sets configuration on the image that indicates a port the image would like to expose.
EXPOSE 8000

# CMD/Entrypoint These instructions specify the command to run when the container starts, 
CMD ["python3", "main.py"]

