##################################################
# Create ECR repository for storig Docker images #
##################################################

resource "aws_ecr_repository" "app" {
  name                 = "recipe-app-api-app"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    # NOTE: This is not recommended for production, but useful for development
    # Update this to `true` for production and real deployment
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "proxy" {
  name                 = "recipe-app-api-proxy"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    # NOTE: This is not recommended for production, but useful for development
    # Update this to `true` for production and real deployment
    scan_on_push = true
  }
}
