layout: true
class: compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: slide3

# Example Integration on AWS

```bash
$ lsb_release -d
Description:    Ubuntu 22.04.2 LTS

$ curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -;
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main";
sudo apt-get update && sudo apt-get install packer;
packer --version;
sudo apt-get install terraform;
terraform --version;
sudo apt install vault;
vault --version;
```
![Ubuntu Logo](./assets/images/logo_ubuntu_small.png#)

???

The working environment for this exercise will be Ubuntu 22.04.2 LTS (https://releases.ubuntu.com/22.04.2/ubuntu-22.04.2-live-server-amd64.iso) and should include the enablement-interview folder @ https://github.com/kylejcarlton/enablement-interview 

$ git clone -b wip https://github.com/kylejcarlton/enablement-interview.git.;
cd enablement-interview;

First step is adding the gpg key and hashicorp repository, then installing Packer, Terraform and Vault.

---
