# Installation Overview

**Author:** Callum Li (calluml1009@gmail.com)

**Date:** 18/10/2018

Installation consists of four main stages

1. Deployment platform setup
2. Project build and deployment
3. Update deployment

Detailed instructions on how to perform each stage are included in their respective files.
A brief overview of each stage and of its purpose is included below.


## 1. Deployment platform setup

This stage allocates the hardware the web server will run on. This document, and the others in
this collection, are based on using Amazon Web Services (AWS) a deployment platform provider.
However, AWS is just one of many potential third party deployment platforms. For instance others
include Vultr, Digital Ocean, and Linode. There is also the possibility of utilising 
Victoria University hardware but that solution was deemed unreasonable through our discussions
with the numerous technical departments of Victoria University due to a lack of ongoing support
for the project.

## 2. Project build and deployment

This stage builds the project and transfers the files to the hardware. Building in this context
refers to the process of converting source code to runnable Docker images. Transfering is 
simply the process of moving the images from the building machine to the server hardware.

This stage also includes the deployment of the application, making the application avaliable
online.

### Optional - Website path setup
Since this only makes the website avaliable through the ip address, the installer might want to
place a sensible domain name over the ip address. Once this is done, you will need to talk to
Nathan (nathan.irwin@vuw.ac.nz) to adjust the link on the Robinson Research Institute website.

## 3. Update deployment

This stage handles the updating of the website to the latest version of the application.
It is relatively simple, and should not happen often since active development will stop
in October 2018.

# Glossary 

* Application: see Web Server
* Building: the process of converting source code to runnable Docker images.
* Building machine: the machine that does the building.
* Server: either refers to the physical server hardware or the Web Server that runs on it.
* Web Server: the software responsible for delivering the web application to the users.
* Web Application: the user facing application that the user interacts with on the website.
