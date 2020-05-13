FROM registry.access.redhat.com/ubi8/ubi


# copy the main program into the image
COPY Ubooquity.jar /jar/
# setup java
RUN dnf module install javapackages-runtime -y


# change the working directory to /app where we expect external
# volume to be mounted
RUN mkdir /app
WORKDIR /app


CMD java -jar /jar/Ubooquity.jar --remoteadmin

EXPOSE 2202 # User
EXPOSE 2203 # Admin

