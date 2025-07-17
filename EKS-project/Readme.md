# 🚀 Terraform AWS EKS Cluster Deployment

This project uses **Terraform** to provision a **fully functional EKS (Elastic Kubernetes Service)** cluster on AWS using official modules and best practices.

---

## 📦 Project Structure

.
├── main.tf # Core EKS module and config
├── variables.tf # Input variables
├── outputs.tf # Useful output values
├── vpc.tf # VPC and networking
├── backend.tf (optional) # Remote state configuration
└── README.md # This file


## ✅ Requirements

- [Terraform >= 1.3.0](https://developer.hashicorp.com/terraform/downloads)
- AWS CLI with credentials configured
- An AWS account with necessary IAM permissions
- [kubectl](https://kubernetes.io/docs/tasks/tools/) installed
- [aws-iam-authenticator](https://docs.aws.amazon.com/eks/latest/userguide/install-aws-iam-authenticator.html) (if required by your setup)

---

## 📁 Modules Used

| Module                                  | Purpose                     |
|----------------------------------------|-----------------------------|
| `terraform-aws-modules/vpc/aws`        | Create VPC, Subnets         |
| `terraform-aws-modules/eks/aws`        | Create EKS cluster & nodes  |

---

## 🔧 How to Use
### 1. Clone the Repository

```bash
git clone https://github.com/<your-username>/TERRAFORM-PROJECTS.git
cd EKS-project
2. Initialize Terraform

terraform init
3. Validate the Configuration

terraform validate
4. Preview the Execution Plan

terraform plan
5. Apply the Configuration

terraform apply
6. Configure kubectl
Fetch credentials for the cluster:

aws eks --region <your-region> update-kubeconfig --name <cluster_name>
Check if cluster is working:

kubectl get nodes
📤 Outputs
The following will be printed after a successful terraform apply:
EKS Cluster Name
Cluster Endpoint
Node Group Details
IAM Role ARNs

📚 Reference
terraform-aws-modules/eks

Terraform AWS Provider

EKS Documentation

📌 Notes
Make sure your AWS credentials are active and not expired.

You can destroy all resources with:
terraform destroy

🙋‍♂️ Author
Harshal Vernekar

GitHub: @Harshalv21