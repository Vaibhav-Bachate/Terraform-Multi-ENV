# 🚀 Terraform AWS Multi-Environment Setup

This project uses **Terraform** to provision AWS infrastructure in a modular way for multiple environments like `dev` and `prod`.

---

## 📁 Project Structure

    Terraform-modules/
    ├── envs/
    │   ├── dev/     # Development environment
    │   └── prod/    # Production environment
    ├── modules/     # Reusable Terraform modules (VPC, IAM, EKS)

Each environment has its own:
- `main.tf`
- `provider.tf`
- `variables.tf`
- `terraform.tfvars`

---

## 🛠 How to Apply for Each Environment

### ▶️ Apply `dev` Environment

    cd envs/dev
    terraform init
    terraform apply -var-file=terraform.tfvars -auto-approve

### ▶️ Apply `prod` Environment

    cd envs/prod
    terraform init
    terraform apply -var-file=terraform.tfvars -auto-approve

---

## 🔐 AWS Credentials

Make sure AWS credentials are available using one of:

- `aws configure`
- Or export environment variables:

      export AWS_ACCESS_KEY_ID="YOUR_KEY"
      export AWS_SECRET_ACCESS_KEY="YOUR_SECRET"
      export AWS_DEFAULT_REGION="ap-south-1"

---

## 👨‍💻 Author

By [Vaibhav Bachate](https://github.com/Vaibhav-Bachate)
