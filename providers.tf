# Configure Provider (Basically a Infra platform for which we would like to write IaC

provider "aws" {
	region = var.aws_region
}