---

### 📁 `provisioner/README.md`

```markdown
# Terraform Provisioners Project

This project showcases using provisioners such as:

- `remote-exec`: Runs commands over SSH
- `file`: Copies local files to remote instances

## Use Case

Provision an EC2 instance and install a basic package or copy a script automatically after boot.

## Setup

1. Make sure the EC2 instance allows SSH (use proper key and security group).
2. Run:
   ```bash
   terraform init
   terraform apply
⚠️ Provisioners should be used carefully. For config management, prefer tools like Ansible.

🙋‍♂️ Author
Harshal Vernekar
GitHub: @Harshalv21