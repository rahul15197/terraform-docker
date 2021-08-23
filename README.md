# Terraform using docker
Infrastructure as Code performed using Terraform on Docker.

This terraform project was created while learning terraform.

## Introduction

A simple project which downloads a nginx image and creates a container which can be accessed on the local system.


## Instructions to run code

1. Clone or Download the repo to your system.
2. Navigate to that downloaded folder.
3. Start Docker desktop (and keep it running in bg)
4. In terminal or Git CLI enter
```sh
terraform init
```
5. Then run either
```sh
terraform plan or terraform apply
```
6. It will list the changes that it will make in a very human readable format.
7. Confirm the changes by typing 'yes' when prompted.
8. You can check if it working or not by going to `localhost:8000` in your local system browser.
9. To delete the resources (container)
```sh
terraform destroy
```

### Contact
[Rahul Maheshwari](mailto:rahul.maheshmaheshwari@gmail.com). Feel free to contact me if facing any difficulty.
