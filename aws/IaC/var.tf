# data "aws_ami" "amazon_linux" {
#     most_recent = true

#     filter {
#       name = "name"
#       values = [ "amzn2-ami-kernel-5.10*" ]
#     }
#     owners = [ "137112412989" ]
# }

# resource "aws_instance" "web" {
#     ami = data.aws_ami.amazon_linux.id
#     instance_type = "t2.micro"
#     tags = {
#         Name = "terraform"
#     }
# }

resource "aws_iam_user" "user" {
    name = "udemy"
    tags = {
      "user:application" = "udemy"
    }
}

resource "aws_iam_access_key" "user" {
    user = aws_iam_user.user.name
}

# resource "aws_iam_user_policy" "user_ro" {
#     name = "udemy"
#     user = aws_iam_user.user.name

#     policy = << EOF
# {
#     "Version": "2012-10-17",
#     "Statement": [
#         {
#             "Action": [
#                 ""
#             ]
#         }
#     ]
# }
# EOF
# }