# Terraform Multi-Environment Setup with Workspaces

This project demonstrates how to manage multiple Azure environments (Dev and Test) using a single Terraform codebase. By utilizing **Terraform Workspaces** and **Variables**, the architecture remains "DRY" (Don't Repeat Yourself), ensuring consistency across environments while isolating state files.

---

## 🚀 Project Objectives
* **Dynamic Resource Naming:** Uses `${terraform.workspace}` for environment-specific resource names.
* **Variable Management:** Centralizes infrastructure parameters for Azure Resource Groups and Virtual Networks.
* **State Isolation:** Demonstrates environment isolation through managed state files.

---

## 🛠️ Tech Stack
* **Cloud Provider:** Azure
* **IaC Tool:** Terraform
* **Version Control:** Git

---

## 📂 File Structure
* **main.tf**: Defines the Azure Resource Group and Virtual Network.
* **variables.tf**: Declares input variables for naming, location, and IP addressing.
* **outputs.tf**: Displays Resource Group and VNet IDs after deployment.
* **.gitignore**: Ensures local state files and provider binaries are not tracked.

---

## ⚙️ How to Use

### 1. Initialize and Login
powershell
az login
terraform init

### 🚀 2. Deploy to Development
To set up the development environment, run:
powershell
terraform workspace new dev
terraform apply -auto-approve

### 🚀 3. Deploy to Test
To set up the test environment, run:
PowerShell
terraform workspace new test
terraform apply -auto-approve

## 🧠 Why Workspaces?
Workspaces allow you to reuse the same configuration files for multiple environments, which eliminates configuration drift and ensures that the Test environment is an exact replica of Dev without the need to manually copy or maintain multiple sets of files.
