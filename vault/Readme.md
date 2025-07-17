---

### 📁 `vault/README.md`

```markdown
# Terraform Vault Integration

This project demonstrates how to use HashiCorp Vault with Terraform to manage sensitive secrets.

## Features

- Secure retrieval of secrets during infrastructure provisioning
- Environment variable-based authentication

## Requirements

- Running Vault server (dev or production mode)
- `VAULT_ADDR` and `VAULT_TOKEN` exported

## Commands

```bash
export VAULT_ADDR="http://127.0.0.1:8200"
export VAULT_TOKEN="your-token"
terraform init
terraform apply

🔐 Ensure secrets are not hardcoded in Terraform files.

🙋‍♂️ Author
Harshal Vernekar
GitHub: @Harshalv21