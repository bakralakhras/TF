# Azure Cloud Infrastructure with Terraform

## Introduction
This project focuses on building scalable infrastructure in **Azure** using **Terraform**. The main objective was to automate cloud infrastructure deployment and ensure scalability by leveraging Azure's services efficiently.

## Azure Resources Used
Here’s a breakdown of the Azure resources I used in the project, and how they interact to form a cohesive cloud environment:

1. **Azure Resource Group**  
   The **Resource Group** acts as a logical container for all the resources I provisioned in Azure. It simplifies management and organization of the associated resources, making it easier to manage everything under a single umbrella.
   
2. **Azure Virtual Network (VNet)**  
   The **Virtual Network** is the foundation of the networking architecture. It enables communication between resources securely within Azure. I used a VNet to define the network in which all resources, including virtual machines, communicate with each other.

3. **Subnet**  
   I divided the VNet into smaller **Subnets** to logically isolate the resources. For example, the **Virtual Machines** reside in a specific subnet, which helps control traffic and security boundaries.

4. **Azure Virtual Machine (VM)**  
   The **Virtual Machines** are the compute resources used to run applications. I made them scalable by configuring different VM sizes and implementing horizontal scaling strategies based on demand.

5. **Network Interface (NIC)**  
   Each **Virtual Machine** is connected to the subnet via a **Network Interface**. The NIC enables the VMs to communicate with other Azure resources and external networks.

6. **Public IP Address**  
   To allow external access to the virtual machines, I provisioned a **Public IP Address**. This IP address is attached to the network interface of the VM, enabling secure remote access.

7. **Azure Storage Account**  
   For data storage, I used an **Azure Storage Account**. This service provides scalable and secure storage solutions, including Blob storage, file shares, and disk storage for VMs.

## How the Resources Work Together
- The **Resource Group** is the parent container where all resources like VMs, networking, and storage are grouped.
- The **Virtual Network** allows the VMs and other resources to communicate securely within the same network.
- The **Subnet** isolates different components of the infrastructure (e.g., web tier, app tier), improving security and performance.
- The **Virtual Machine** represents the compute power of the infrastructure, with NICs and **Public IP Addresses** attached for networking and external access.
- The **Storage Account** provides scalable storage for both VM disks and application data.

## Project Highlights
1. **Infrastructure as Code (IaC)**: Automated Azure resource provisioning using Terraform.
2. **Modular and Scalable**: Reused Terraform modules to easily scale infrastructure components.
3. **Azure Native Resources**: Integrated core Azure services like **Virtual Machines**, **Virtual Networks**, and **Storage Accounts**.
4. **Scalability**: Designed the infrastructure to automatically scale compute and networking resources based on workload demands.

## Setup & Usage

1. **Initialize Terraform for Azure**  
   Initialize Terraform by running the following to set up the backend and download Azure providers:
   ```bash
   terraform init
   ```

2. **Configure Variables**  
   Define your Azure-specific configuration in `terraform.tfvars`, such as resource group, location, and VM size.
   ```hcl
   resource_group = "myAzureResourceGroup"
   location       = "East US"
   vm_size        = "Standard_DS1_v2"
   ```

3. **Deploy Infrastructure**  
   After configuring variables, use `terraform apply` to provision the resources.
   ```bash
   terraform apply
   ```

4. **View Outputs**  
   Use Terraform’s output feature to retrieve key details like public IP addresses and resource group information.
   ```bash
   terraform output
   ```

## What’s Next?
In the future, I aim to enhance this setup by integrating **Azure Kubernetes Service (AKS)** for containerized workloads, and by exploring more advanced scaling techniques with **Azure Functions** for serverless architectures.
