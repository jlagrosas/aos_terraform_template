# Terraform Template for OpenStack

Pre-requiste tools:

Terraform


## Install Terraform CLI in Ubuntu

Install the pre-requiste packages.

```
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
```

Add the Hashicorp GPG key.

```
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
```


Add the official Hashicorp Linux repository.

```
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
```

Update to add the repository, and install the Terraform CLI.

```
sudo apt-get update && sudo apt-get install terraform
```

For further readings, see: [Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)


## Apply Changes to Infra
Follow these steps when applying changes to Payconnect cloud infra.

### Inspect the changes to infra by executing:

```
terraform plan
```

### Review the changes to be applied. Watch out for critical changes especially destroys. Execute the command to apply the changes.

```
terraform apply
```

### Destroy Infra

To takedown the whole cloud infra, execute:
```
terraform destroy
```

***WARNING:*** Use the `destroy` command with extreme caution.
