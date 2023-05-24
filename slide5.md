layout: true
class: compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: slide5

# Example Integration on AWS 

```bash
$ packer init .;
packer fmt .;
packer validate .;
packer build .;
...
==> Wait completed after 3 minutes 59 seconds
==> Builds finished. The artifacts of successful builds are:
--> packer-terraform-int-aws.amazon-ebs.ubuntu: AMIs were created: us-east-2: ami-***
```
![Packer Logo](./assets/images/logo_packer_small.png# db)

???

With AWS credentials now available in Vault, initiate Packer, validate the configuration and build the AMI from packer.pkr.hcl.

---
