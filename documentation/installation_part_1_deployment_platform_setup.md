# Deployment platform setup

## Prerequisites

* Amazon Web Services Account - [sign up here](https://portal.aws.amazon.com/billing/signup#/start "sign up link") 

## Setting up an EC2 Instance

### 1. Login - [here](https://console.aws.amazon.com/console/home)
![step 1](img/deployment_platform_setup/1.png)

### 2. Under "All Services" and then under "Compute" select "EC2"
![step 2](img/deployment_platform_setup/2.png)

### 3. Press the "Launch Instance" button
![step 3](img/deployment_platform_setup/3.png)

### 4. Select "Amazon Linux 2 AMI (HVM), SSD Volume Type"
![step 4](img/deployment_platform_setup/4.png)

### 5. Select instance type.
The confirmed working minimum hardware specifications are
1vCPU and 1GiB memory. Pricing information can be found
[here](https://aws.amazon.com/ec2/pricing/)

The instance used for this example is a **t2.small** which
costs approximately $5 USd a month.

![step 5](img/deployment_platform_setup/5.png)

### 6. Press "Review and Launch"
![step 6](img/deployment_platform_setup/6.png)

### 7. Press "Edit security groups"
![step 7](img/deployment_platform_setup/7.png)

### 8. Allow HTTP and HTTPS requests to the server
1. Press "Add Rule"
2. Change its type to "HTTP"
3. Press "Add Rule"
4. Change its type to "HTTPS"

![step 8](img/deployment_platform_setup/8.png)

### 9. Press "Review and Launch"
![step 9](img/deployment_platform_setup/9.png)

### 10. Press "Edit Storage"
![step 10](img/deployment_platform_setup/10.png)

### 11. Edit "Size" to "20" (GiB)
![step 11](img/deployment_platform_setup/11.png)

### 12. Press "Review and Launch"
![step 12](img/deployment_platform_setup/12.png)

### 13. Press "Launch"
![step 13](img/deployment_platform_setup/13.png)

### 14. Choose "Create a key pair", give it a name (e.g. rridb.pem), and press "Download Key Pair"

### 15. Press "Launch Instances"
![step 15](img/deployment_platform_setup/15.png)

### 16. Store the key pair safe. It is the key to the server.

### 17. If you need to transfer the key to someone, use secure means.
Secure means include but are not limited to:
1. Physically transferring it via USB
2. Encrypting it with a passphrase (e.g. with AES encryption)
and sending the encrypted result via email and the passphrase
via phone
3. Use SCP to transfer the file


### Setting up an Elastic IP

### 18. Go back to the EC2 dashboard (as in step 2)
![step 18](img/deployment_platform_setup/18.png)

### 19. Click "Elastic IPs" in the left side menu.
![step 19](img/deployment_platform_setup/19.png)

### 20. Press the blue "Allocate new address" button
![step 20](img/deployment_platform_setup/20.png)

### 21. Press "Allocate"
![step 21](img/deployment_platform_setup/21.png)

### 22. Press close
![step 22](img/deployment_platform_setup/22.png)

### 23. Select the newly allocated address and under “Actions” (next to the blue button) press “Associate address”.
![step 23](img/deployment_platform_setup/23.png)

### 24. Under “Instance” select the instance we previously created and press “Associate”
![step 24](img/deployment_platform_setup/20.png)
