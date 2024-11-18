# terraform
First, ensure that you are using an administrative shell - you can also install as a non-admin, check out Non-Administrative Installation.
Install with powershell.exe
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

#install aws cli

install terraform
#$ choco install terraform

run aws configure to configyre access key, secret access key, default region and default output format
#aws configure

list of commonly used Terraform commands along with their descriptions:

Initialization and Setup:
#terraform init
Description: Initializes the working directory containing Terraform configuration files. This command downloads the necessary provider plugins, sets up the backend (for state management), and initializes modules.

#terraform plan
#terraform apply -auto-approve
Description: Previews the changes Terraform will make to your infrastructure based on the current configuration and the state file. This is a dry-run to see what will be created, updated, or destroyed.

##terraform apply
Description: Applies the changes required to reach the desired state of the configuration. This will prompt you for confirmation (unless the -auto-approve flag is used).

#terraform refresh
Description: Updates the state file with the current state of resources in your infrastructure. It is useful when you've made changes to the resources manually or externally (outside Terraform).

#terraform show
Description: Displays the current state or the plan output in human-readable format. It’s useful to inspect the resources that Terraform is currently managing.

#terraform destroy
terraform destroy -auto-approve
Description: Destroys the infrastructure managed by Terraform. It will remove all resources defined in your configuration files.

#terraform import
Description: Imports existing infrastructure resources into the Terraform state. This is useful when you want Terraform to manage resources that were created manually or outside of Terraform.
terraform import <resource_type>.<resource_name> <resource_id>
terraform import aws_instance.my_instance i-1234567890abcdef0

#terraform state
Description: Provides subcommands for managing the Terraform state file. It can be used to view, modify, or remove resources from the state file.
Common Subcommands:
terraform state list: Lists all resources in the current state.
terraform state show <resource_name>: Shows detailed information about a specific resource in the state.
terraform state rm <resource_name>: Removes a resource from the state file without destroying it.
terraform state mv <source> <destination>: Moves a resource in the state file.

Output and Variables:
#terraform output
Description: Displays the output variables defined in the Terraform configuration. It is useful for showing values (like IP addresses, URLs, etc.) after running terraform apply.

#terraform console
Description: Opens an interactive console to query Terraform variables and resources. It allows you to explore your Terraform configuration and state in a REPL-like environment.

#terraform validate
Description: Validates the syntax and configuration files in your project. It checks if the configuration is syntactically correct and all required variables are defined.

#terraform providers
Description: Shows the providers used in the configuration and their versions.

Debugging and Help:
#terraform fmt
Description: Formats your Terraform configuration files to a canonical style, making them easier to read and follow. It is often used to ensure that configuration is consistently styled.

#terraform validate
Description: Validates your configuration files for syntax errors and internal consistency.

#terraform version
Description: Shows the current Terraform version installed. It’s useful for ensuring you're using the correct version for your project.

#terraform help
Description: Displays a list of available commands and subcommands, as well as detailed usage information.

Advanced Management:
#terraform graph
Description: Generates a visual representation of the Terraform configuration in DOT format, which can be used to create a graph of the resources.

#terraform workspace
Description: Manages Terraform workspaces. Workspaces allow you to manage different versions of your infrastructure (e.g., dev, staging, prod).
Common Subcommands:
terraform workspace list: List all workspaces.
terraform workspace new <workspace_name>: Create a new workspace.
terraform workspace select <workspace_name>: Switch to a different workspace.

Additional Options and Flags:
-var: Allows you to specify input variables when running commands like plan, apply, etc.

#terraform apply -var="instance_type=t2.micro"
-var-file: Allows you to specify a file containing variable values (often used to override default terraform.tfvars files).

#terraform plan -var-file="production.tfvars"
#terraform apply -auto-approve

Summary of Core Commands:
Command	Description
#terraform init	Initializes the working directory and plugins
#terraform plan	Previews changes to the infrastructure
#terraform apply	Applies the changes to the infrastructure
#terraform destroy	Destroys the managed infrastructure
#terraform show	Displays the current state of resources
#terraform output	Displays output values defined in the configuration
#terraform validate	Validates the syntax of configuration files
#terraform fmt	Formats Terraform configuration files
