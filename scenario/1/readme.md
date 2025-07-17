# 🛠️ Migrating an Existing EC2 Instance to Terraform

This project demonstrates how to **migrate an existing AWS EC2 instance** into Terraform management using the `terraform import` command.

📦 Use Case: You have a manually created EC2 instance that you want to manage with Infrastructure as Code (IaC) using Terraform.

---

## ✅ What This Project Includes

- Importing an existing EC2 instance into Terraform
- Generating Terraform configuration with `terraform plan -generate-config-out`
- Cleaning and editing the generated configuration for reusability
- Managing the EC2 instance fully via Terraform going forward

---

## 📁 Project Structure

ec2-migration-terraform/
├── main.tf # Cleaned-up Terraform config
├── generated_resources.tf # Auto-generated config from import #i have delete aftr copying the info into main.tf
└── terraform.tfstate # Terraform state file (do not commit to GitHub)

yaml
Copy
Edit

---

## ⚙️ Prerequisites

- Terraform installed
- AWS CLI configured (`aws configure`)
- An existing EC2 instance running in AWS
- EC2 Instance ID (e.g., `i-0abc1234567890def`)

---

## 🚀 Steps to Reproduce

### 1. Initialize Terraform

```bash
terraform init

2. Generate Terraform Code

terraform plan -generate-config-out="generated_resources.tf"
This generates Terraform code based on the imported instance.

3. Import EC2 Instance into Terraform

terraform import aws_instance.example i-0abc1234567890def
This creates a mapping in terraform.tfstate, but not the .tf code.


4. Clean Up Generated Code
Open generated_resources.tf
Move the EC2 block to main.tf
Remove unnecessary or conflicting attributes (like both ipv6_address_count and ipv6_addresses)
Optional: Replace hardcoded values with variables.

5. Plan and Apply
After cleaning up:

terraform plan
🧹 Cleanup
To terminate the EC2 instance via Terraform:

bash
Copy
Edit
terraform destroy

👨‍💻 Author
Deployed and managed with 💻 by Harshal Vernekar