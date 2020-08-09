# Update deployment
This document outlines the process of updating the build on the web server.

## Prerequisites

* "Build and deployment" and its preqrequisites

## Update deployment
### 1. Navigate to the deployment folder from "Build and deployment"
e.g. `cd Figshare-Data-Visualizer/deployment`


### 2. Run `./update_deployment "path to private key" ec2-user@"ip address of server"`
This updates the application to the latest version. It might require you to enter
some credentials.
