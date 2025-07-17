# 🌐 Terraform S3 Static Website Hosting

This project uses **Terraform** to create and configure an **AWS S3 Bucket** for hosting a static website. It uploads your HTML and image files and enables public access for web hosting.

---

## 📁 Project Structure

.
├── main.tf # Terraform configuration for S3 website hosting
├── output.tf # Outputs the website URL after deployment
├── variables.tf # Bucket name variable
├── index.html # Home page of your website
├── error.html # Error page (for 404 or other failures)
└── profile.png # Profile image used in the website

yaml
Copy
Edit

---

## 🚀 Features

- Creates a public S3 bucket
- Uploads HTML files and a profile image
- Configures bucket for static website hosting
- Outputs the website URL

---

## 🔧 Prerequisites

- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) configured (`aws configure`)
- [Terraform](https://developer.hashicorp.com/terraform/install) installed
- AWS IAM user with necessary S3 permissions:
  - `s3:CreateBucket`
  - `s3:PutObject`
  - `s3:PutBucketAcl`
  - `s3:PutBucketWebsite`

---

## 📦 Setup Instructions

1. **Clone this repository:**
   ```bash
   git clone https://github.com/Harshalv21/Terraform-Projects.git
   cd static-website-project
Initialize Terraform:

terraform init
Preview the changes:

terraform plan
Apply the configuration:

terraform apply
Access your website:
After apply, Terraform will output your static website endpoint, e.g.:

website_url = http://mytfstaticwebsitebucket.s3-website.eu-north-1.amazonaws.com
🌐 Access Permissions
This setup disables S3’s public access block settings and uses ACLs to allow public-read access for the hosted files. Do not use this configuration for sensitive or private content.

🧹 Tear Down
To delete all created resources:
terraform destroy

📸 Sample Website
The default index.html and error.html can be customized as needed. You can also update profile.png to use your own image.

📄 License
This project is open-source and available under the MIT License.

🙋‍♂️ Author
Harshal Vernekar
GitHub: @Harshalv21