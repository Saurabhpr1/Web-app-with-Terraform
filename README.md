# 📦 Web App Deployment using Terraform & GitHub Actions

This project demonstrates how to provision an **Azure Web App infrastructure using Terraform** and deploy application code using **GitHub Actions CI/CD**.

---

## 🚀 Project Overview

### 🏗 Infrastructure (Terraform – Local Execution)

Terraform was used locally to provision Azure resources:

* Resource Group
* App Service Plan
* Azure Web App
* Backend configuration for Terraform state

All infrastructure was created using a **modular structure** for better organization and reusability.

---

### 🔁 Application Deployment (GitHub Actions)

GitHub Actions is used only for:

* Installing dependencies (`npm install`)
* Building the application (`npm run build`)
* Deploying the build to Azure Web App

Infrastructure provisioning is **not handled by CI/CD** — it is managed manually via local Terraform execution.

---

## 🧩 Folder Structure

```
.
├── child_modules/
│   ├── app-service-plan/
│   ├── resource-group/
│   └── web-app-code/
├── parent-module/
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── providers.tf
│   └── outputs.tf
└── README.md
```

* `child_modules` → Reusable infrastructure modules
* `parent-module` → Entry point calling all modules

---

## ⚙️ How to Run Terraform (Locally)

1️⃣ Initialize Terraform

```bash
terraform init
```

2️⃣ Check execution plan

```bash
terraform plan
```

3️⃣ Apply infrastructure

```bash
terraform apply -auto-approve
```

---

## 🤖 GitHub Actions Workflow

On every push to `main` branch:

* Install dependencies
* Build application
* Deploy to Azure Web App

Ensure required GitHub Secrets are configured:

* `AZURE_WEBAPP_NAME`
* `AZURE_WEBAPP_PUBLISH_PROFILE`

---

## 🛠 Tech Stack

* Terraform
* Azure App Service
* GitHub Actions
* Node.js

---

## 💡 Key Learnings

* Modular Terraform structure
* Remote backend state management
* Separation of Infrastructure & Application deployment
* CI/CD pipeline for app deployment

---

## 📌 Future Improvements

* Move Terraform execution to CI/CD
* Add environment-based deployments (dev/prod)
* Add Terraform validation in pipeline

---
