layout: true
class: img-right
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: slide1

# Main Benefits

- Increase efficiency with faster infrastructure provisioning
???
Faster Infrastructure Provisioning: Terraform can launch instances or resources faster using pre-built machine images from Packer.

--
count: false
- Improve repeatability through infrastructure reusability and image versioning
???
Infrastructure Reusability: Packer and Terraform configurations can be modular and reusable. You can create a library of machine images with Packer, and Terraform can reference these images across multiple infrastructure deployments. This approach promotes consistency and reduces duplication of effort.

Image Versioning: Packer can generate new versions of machine images automatically, and Terraform can manage their lifecycle.
--
count: false
- Strengthen security posture and keep operations streamlined
???
By leveraging Vault, organizations can strengthen their security posture, streamline operations, and protect sensitive data effectively.
--
count: false
- Reduce risk from human error
???
Immutable Infrastructure: Create consistent and reproducible machine images with Packer that Terraform can provision and manage.
--
count: false
- ...
???
And more...
---
