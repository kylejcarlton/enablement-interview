layout: true
class: img-right
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: slide1

# Main Benefits

- Increased Efficiency With Faster Infrastructure Provisioning
???
Faster Infrastructure Provisioning: Terraform can launch instances or resources faster using pre-built machine images from Packer.

--
count: false
- Improved Repeatability Through Infrastructure Reusability and Image Versioning.
???
Image Versioning: Packer can generate new versions of machine images automatically, and Terraform can manage their lifecycle.

Infrastructure Reusability: Packer and Terraform configurations can be modular and reusable. You can create a library of machine images with Packer, and Terraform can reference these images across multiple infrastructure deployments. This approach promotes consistency and reduces duplication of effort.
--
count: false
- Reduced Risk From Human Error
???
Immutable Infrastructure: Create consistent and reproducible machine images with Packer that Terraform can provision and manage.
--
count: false
- ...

---
