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
```


![Packer Logo](./assets/images/logo_packer_small.png)

???

With AWS credentials now available in Vault, initiate Packer, validate the configuration and build the AMI.

---
