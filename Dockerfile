#Choose a Base Image
#Copy Source code
#Install dependencies
#Expose Port
#Start application


FROM public.ecr.aws/ubuntu/ubuntu:24.10_stable 
WORKDIR /app
COPY . .
RUN apt-get update
RUN apt-get install -y python3-pip python3.12-venv
RUN python3 -m venv venv
RUN /app/venv/bin/pip3 install -r requirements.txt
EXPOSE 5000
CMD ["/app/venv/bin/python3", "app.py"]
