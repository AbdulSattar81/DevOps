#base Image (OS)
FROM nginx:1.25.2-alpine-slim

#set working directory
WORKDIR /app

#copy the code from host to container
COPY . .

#set environment
ENV MYSQL_ROOT_PASSWORD="Testing123" \
    MYSQL_DATABASE="bankappdb"

#LABEL 

RUN pip install -r requirements.txt 

#Exposing the port
EXPOSE 8080

#use entrypoint to set the fixed executable
ENTRYPOINT ["pthon3" ]

#serve the Application by using arguments
#Anything after the executable are arguments
CMD ["app.py"]
