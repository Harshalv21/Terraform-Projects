---

### 📁 `workspace-projects/README.md`

```markdown
# Terraform Workspaces Example

This project illustrates managing multiple environments using Terraform workspaces.

## What Are Workspaces?

Workspaces allow you to use the same configuration to manage different state files (e.g., dev, staging, prod).

## Usage

```bash
terraform workspace new dev
terraform workspace select dev
terraform apply
Benefits
Isolated infrastructure per environment

Clean separation of resources without duplicating code

Cleanup
bash
Copy
Edit
terraform workspace delete dev

🙋‍♂️ Author
Harshal Vernekar
GitHub: @Harshalv21