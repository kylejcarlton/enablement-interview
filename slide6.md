layout: true
class: compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: slide6

# Example Integration on AWS 

```hcl
resource "aws_instance" "packer" {
  ami           = "ami-059**************"
}
```


![Packer Terraform](./assets/images/logo_terraform_small.png)

???

Replace the AMI ID in the terraform.tf file with the one created by Packer. 

---
