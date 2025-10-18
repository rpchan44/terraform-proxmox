# Terraform Proxmox
This terraform application is used for educational purpose only, I purposely pick proxmox because it was easy and fun don't get this code fool you, this is short but action pack!

# Prerequisite 
You need to self-hosted runners,minio,terrateam and a couple of TF_VARS matchup with the variable declaration in the root module to get this to work because I intentionally don't include terraform.tfvars as a security practice, setting up minio and terrateam is not part of this excercise look for backend.tf as a start

You should create your bucket first before experimenting this IaC code

# Providers

Providers required by configuration:
```
├── provider[registry.terraform.io/bpg/proxmox] 0.84.1
├── provider[terraform.io/builtin/terraform]
├── module.image_factory
│   └── provider[registry.terraform.io/bpg/proxmox] 0.84.1
└── module.launch_instance
    └── provider[registry.terraform.io/bpg/proxmox] 0.84.1

Providers required by state:

    provider[registry.terraform.io/bpg/proxmox]

    provider[terraform.io/builtin/terraform]
```
Terraform.tfvars
```
pve_api="https://192.168.50.X:8006"
pve_secret="1"
pve_user="root@pam"
username="adminuser"
secret="adminuser"
ssh_keys="your_ssh_public_key"
```

