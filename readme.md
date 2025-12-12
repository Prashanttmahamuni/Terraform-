# Terraform – Notes & Practical Guide

## Day 1 – Introduction to Terraform

### Evolution of Deployment
- **Traditional Deployment**
- **Cloud Deployment**
- **Automated Deployment**
- **Infrastructure as Code (IaC)**

---

## Infrastructure as Code (IaC)

IaC enables you to codify your entire infrastructure using configuration files.

### IaC Categories

| Category                 | Purpose                                   | Tools                          |
|---------------------------|-------------------------------------------|--------------------------------|
| **Configuration Management** | Install & manage software on existing infra | Ansible, Puppet, SaltStack     |
| **Server Templating**        | Create custom images                     | Docker, Packer, Vagrant        |
| **Provisioning Tools**       | Deploy entire infra                      | Terraform, CloudFormation      |

---

## Why Terraform?
- ✔️ Open-source and managed by HashiCorp  
- ✔️ Supports multi-cloud deployment via providers  
- ✔️ Works with physical machines, VMware, AWS, GCP, Azure  
- ✔️ Uses simple configuration languages: **JSON**, **HCL (HashiCorp Configuration Language)**  
- ✔️ File extension: `.tf`  

---

## Terraform Concepts

### Desired State vs Current State
- **Desired State**: Infrastructure defined inside `.tf` configuration files (e.g., EC2, S3, RDS, VPC, Subnets).  
- **Current State**: Actual infrastructure already deployed in cloud.  

**Terraform State File (`terraform.tfstate`)** stores:
- Resource IDs  
- Metadata  
- Dependencies  
- Current status  

Terraform compares **actual vs desired state** using this file.

---

## Terraform Lifecycle

### Commands
- `terraform init` → Initializes working directory, downloads provider plugins, sets up `.terraform` folder  
- `terraform plan` → Shows execution plan, compares desired vs current state, lists resources to create/update/delete  
- `terraform apply` → Executes the plan, creates/updates/destroys resources, updates state file  
- `terraform destroy` → Deletes all Terraform-managed resources  

---

## 🔗 Terraform Import
Manage existing infrastructure with:
```bash
terraform import <resource> <resource_id>
```
Terraform will then track imported resources.

## Terraform Cloud
- Centralized remote backend

- Collaboration for teams

- Remote state storage

## Block Types in Terraform
### 1. resource

### 2. provider

### 3. terraform

### Example:

hcl
```
resource "local_file" "pet_file" {
  filename = "/root/pet.txt"
  content  = "I love pets"
}
```

## Installing Terraform (Windows)
- Install Chocolatey

- Open PowerShell as Administrator

### Run:

bash
```
choco install terraform
```
## Creating EC2 using Terraform
### Requirements
- AWS credentials

- Provider configuration

- IAM Roles (for permissions)

- Use --auto-approve to skip confirmation





