FROM jenkins/jenkins:lts

ARG APP_VAR

RUN echo $APP_VAR

MAINTAINER vikas

USER root

RUN apt-get update && apt-get upgrade

USER jenkins
