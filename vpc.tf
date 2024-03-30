# Create a VPC
/*resource "aws_vpc" "utc-app1" {
  cidr_block = "172.120.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "utc VPC"
    Env = "Dev"
    Team = "Wdp"
    Created-by = "Mohamed"
  }
}

# Create Web Public Subnet
resource "aws_subnet" "utc-subnet" {
  vpc_id                  = aws_vpc.utc-app1.id
  cidr_block              = "172.120.3.0/24"
  map_public_ip_on_launch = true
 
  tags = {
    Name = "utc-subnet"
  }
}
# Define the private subnets
resource "aws_subnet" "private-subnet" {
  vpc_id = aws_vpc.utc-app1.id
  cidr_block = "172.120.0.0/24"
  map_public_ip_on_launch = false
  tags = {
    Name = "utc-psubnet"
  }
}

# Create Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.utc-app1.id

  tags = {
    Name = "dev-wdp-IGW"
  }
}

# Create Web layer route table
/*resource "aws_route_table" "web-rt" {
  vpc_id = aws_vpc.utc-app1.id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "utc WebRT"
  }
}

# Create Web Subnet association with Web route table
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public-subnet.id
  route_table_id = aws_route_table.web-rt.id
 }
 */