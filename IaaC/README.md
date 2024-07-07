## Infrastructure as Code (IaaC)

Infrastructure as Code (IaaC) is a practice that involves managing and provisioning infrastructure resources using machine-readable configuration files. By treating infrastructure as code, we can automate the deployment and management of our infrastructure, making it more efficient, scalable, and consistent.

This section focuses on using Terraform, an infrastructure as code tool, to deploy services in Google Cloud Platform (GCP). Terraform allows us to define our infrastructure in a declarative manner, making it easier to manage and reproduce our infrastructure configurations.

## Granting Permissions to GitHub for GCP Service Account
Follow the steps below to grant the necessary permissions to GitHub and enable automated deployment using Terraform:

1. Open the Google Cloud Console and navigate to the IAM & Admin section.
2. Select the project that contains the GCP service account you want to use.
3. Click on "IAM" in the left sidebar to access the IAM page.
4. Click on "Add" to add a new member.
5. In the "New members" field, enter the GitHub username or email address.
6. Select the appropriate role for the GitHub user, such as "Editor" or "Owner".
7. Click on "Save" to grant the permissions to the GitHub user.

Once the permissions are granted, GitHub will be able to use the GCP service account to perform plan and apply operations.

By granting permissions to GitHub to use a GCP service account with the necessary permissions, we enable GitHub to perform plan and apply operations on our behalf. This allows us to automate the deployment process and ensure consistency across environments.
