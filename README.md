# Provision an EKS Cluster (AWS) using Terraform
## Fill the tfvars
This project needs some variables, for this reason please create the file `terraform.tfvars`
```
cp terraform.tfvars_example terraform.tfvars
```

## Run the terraform script
```
terraform plan
terraform apply
```

## Retrieve access credentials
```
aws eks --region $(terraform output -raw region) update-kubeconfig \
    --name $(terraform output -raw cluster_name)
```

## Verify the clluster
```
kubectl cluster-info
```

## Verify worker nodes
```
kubectl get nodes
```

## Clean up your workspace
```
terraform destroy
```
