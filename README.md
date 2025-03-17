
# Proxmox Terraform Example 
This Terraform module provides a foundational setup for deploying virtual machines and containers on Proxmox VE. It encapsulates common configurations and best practices, allowing for consistent and repeatable deployments.

# Proxmox Terraform VM Deployment Example

This repository provides a Terraform example for deploying a virtual machine (VM) to a Proxmox VE server. It demonstrates how to use the Terraform Proxmox provider to provision a VM in a local environment, mirroring the experience of deploying VMs in cloud environments like AWS, Azure, GCP, or even VMware.

## Why Use This Example?

* **Learn Terraform Without Cloud Costs:** If you're new to Terraform or want to practice your skills without incurring cloud provider charges, this example offers a cost-effective solution.
* **Familiar Cloud Deployment Experience:** This example aims to replicate the Terraform workflow used for deploying VMs in popular cloud platforms, making the transition to cloud infrastructure easier.
* **Pre-Cloud Terraform Practices:** Showcases how VM deployment was handled with Terraform before widespread cloud adoption, providing a historical perspective.

## Learning Resources
# Proxmox Terraform VM Deployment Example
This repository provides a Terraform example for deploying a virtual machine (VM) to a Proxmox VE server. It demonstrates how to use the Terraform Proxmox provider to provision a VM in a local environment, mirroring the experience of deploying VMs in cloud environments like AWS, Azure, GCP, or even VMware.
- For production environments, you'll typically use Terraform within CI/CD pipelines alongside other tools. This example focuses on basic VM deployment. However, it's essential to understand that real-world Terraform usage involves more complex workflows and integrations.

## Why Use This Proxmox Terraform Example for Learning?

This example is specifically designed to be a valuable learning tool for several key reasons:

-Cost-Effective Practice:**
    * Cloud platforms are excellent, but they come with costs. This Proxmox setup lets you practice Terraform with real virtual machines without incurring those costs. You can experiment, make mistakes, and learn from them without worrying about a hefty bill.
    * This is especially crucial for beginners who want to explore Terraform's capabilities without financial risk.
    * Any working server / desktop / laptop will work to get started.
- Hands-On, Tangible Results:**
    * Instead of just reading documentation or watching videos, you'll be actively creating and managing real VMs. This hands-on experience solidifies your understanding of Terraform concepts.
    * You can see the direct impact of your Terraform code, which reinforces the learning process.
-Bridging the Gap to Cloud:**
    * The structure and workflow of this example are designed to closely resemble how Terraform is used in cloud environments. This makes it easier to transition to cloud deployments later on.
    * You'll learn the fundamental concepts of infrastructure as code (IaC) in a familiar context, preparing you for more complex cloud architectures.
- Local Environment Control:**
    * You have complete control over your Proxmox environment, allowing you to experiment with different configurations and scenarios.
    * This level of control is often limited in cloud environments, where certain resources or configurations might be restricted.
- Debugging and Troubleshooting:**
    * When things go wrong (and they often do when learning), you'll have the opportunity to debug and troubleshoot your Terraform code in a safe environment.
    * This process of problem-solving is essential for developing practical Terraform skills.
- Understanding Infrastructure Concepts:
    * Working with Proxmox exposes you to fundamental infrastructure concepts like virtualization, networking, and storage, which are essential for any DevOps or infrastructure role.
    * By managing these components through terraform, you gain a deeper understanding of how they work together.
- Terraform is built for iterative changes. You can easily modify your configurations and apply them to your Proxmox environment, allowing you to quickly test different scenarios and refine your skills.
- In essence, this example provides a safe, accessible, and practical way to learn Terraform and gain valuable infrastructure skills.




## Features

* **VM and Container Creation:** Simplifies the creation of Proxmox VMs and LXC containers.
* **Networking Configuration:** Manages network interfaces, bridges, and VLANs.
* **Storage Management:** Handles storage pools and disk configurations.
* **Cloud-Init Support:** Integrates with Cloud-Init for initial VM/container configuration.
* **Template Support:** Enables deployment from existing Proxmox templates.
* **Resource Customization:** Allows fine-grained control over CPU, memory, and disk resources.
* **Firewall Management:** Basic firewall rule management.
* **SSH Key Injection:** Injects SSH keys for secure access.

## Prerequisites

- Terraform installed (version >= 1.5 recommended).
- Proxmox VE server accessible 3.7-1 or later
- Proxmox user or root user and password
- Appropriate Proxmox storage and network configurations.
- This Pipeline uses a `proxmox-base-module` for simplified VM creation. 
[https://github.com/ejbest/proxmox-base-module](https://github.com/ejbest/proxmox-base-module)


1.  **Clone the module:**

    ```bash
    git clone <repository_url>
    cd <module_directory>
    ```

3.  **Initialize Terraform:**

    ```bash
    terraform init
    ```

4.  **Plan and apply:**

    ```bash
    terraform plan
    terraform apply
    ```

## Variables

| Name                | Description                                    | Type   | Default | Required |
| :------------------ | :--------------------------------------------- | :----- | :------ | :------- |
| `proxmox_endpoint`  | Proxmox API endpoint.                          | string |         | Yes      |
| `proxmox_username`  | Proxmox username.                              | string |         | Yes      |
| `proxmox_password`  | Proxmox password.                              | string |         | Yes     |
| `node`              | Proxmox node name.                             | string |         | Yes      |
| `storage`           | Proxmox storage pool.                          | string |         | Yes      |
| `network_bridge`    | Proxmox network bridge.                        | string |         | Yes      |
| `vms`               | Map of VM configurations.                      | map    | `{}`    | No       |

## Outputs

| Name             | Description                               |
| :--------------- | :---------------------------------------- |
| `vm_ids`         | Map of created VM IDs.                    |
| `container_ids`  | Map of created Container IDs.             |

## Contributing

Contributions are welcome! Please submit a pull request or open an issue for any bugs or feature requests.

## License

This module is licensed under the MIT License.
