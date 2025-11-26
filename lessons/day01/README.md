# **Day 1: Introduction to Terrform: Infrastrure as Code (IaC)**

## What is Infrastructure as Code (Iac)?

Infrastructure as Code (IaC) is the process of provisioning and managing infrastructure using code instead of manual process or with the use of Graphical User Interface(GUI).

## Why infracture as Code?
Each cloud provider like AWS, Azure, GCP have their own console or Graphical User Interface. Then, why we use Infrastucture as Code!!

Imagine a three-tier architecture application, the time create a single envirnoment manaually using cloud provider console might take upto minimum of 2 hour. An application must have multiple environment like for development, testing, quality assurance, pre-production environment etc. and we also need to destroy or maintain such environment everyday. It was actual head-ache for maintaining the server and chance of making manual errors were high until the introduction of Infrastructure as Code which helps to automate and re-use the same code.

### Challenges faced by Manual process
- Time consuming
- Human error
- Hightly complex

### Benefits of IaC
- **Consistency**: Identical environments across dev, staging, and production
- **Time Efficiency**: Automated provisioning saves hours of manual work
- **Cost Management**: Easy to track costs and automate cleanup
- **Scalability**: Deploy to hundreds of servers with same effort as one
- **Version Control**: Track changes in Git
- **Reduced Human Error**: Eliminate manual configuration mistakes
- **Collaboration**: Team can work together on infrastructure


### What is Terraform?
Infrastructure as Code tool that helps automate infrastructure provisioning and management across multiple cloud providers.

### How Terraform Works
Write Terraform files → Run Terraform commands → Call AWS APIs through Terraform Provider

**Terraform Workflow Phases:**
1. `terraform init` - Initialize the working directory
2. `terraform validate` - Validate the configuration files
3. `terraform plan` - Create an execution plan
4. `terraform apply` - Apply the changes to reach desired state
5. `terraform destroy` - Destroy the infrastructure when needed

## **Terraform Installation on Ubuntu / WSL**

Here’s how I set up Terraform on my machine:

1. **Install HashiCorp's GPG Key and Add Repository:**

   So, I started by adding the HashiCorp GPG key to my system and adding their repository. These steps are needed to get Terraform installed from a trusted source:

   ```bash
   # For Ubuntu/Debian
   wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
   echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
   sudo apt update && sudo apt install terraform
   ```

2. **Verify Terraform Installation:**

   After the installation, I ran the following command to check if Terraform was installed correctly:

   ```bash
   terraform -version
   ```

   It worked! I got the Terraform version back, confirming the installation was successful.