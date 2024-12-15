resource "aws_vpc" "vpc-eks" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-for-eks"
  }
}

resource "aws_subnet" "public-us-east-1a" {
  vpc_id            = aws_vpc.vpc-eks.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "eks-sub-public01"
  }
}

resource "aws_subnet" "public-us-east-1b" {
  vpc_id            = aws_vpc.vpc-eks.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "eks-sub-public02"
  }

}

resource "aws_subnet" "private-us-east-1a" {
  vpc_id            = aws_vpc.vpc-eks.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "eks-sub-private01"
  }
}

resource "aws_subnet" "private-us-east-1b" {
  vpc_id            = aws_vpc.vpc-eks.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "eks-sub-private02"
  }
}

