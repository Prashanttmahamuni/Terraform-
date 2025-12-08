resource "aws_instance" "first-instance" {
    ami = "ami-02b8269d5e85954ef"
    instance_type = "t3.micro"
    tags = {
        name = "web_server"
    }
}