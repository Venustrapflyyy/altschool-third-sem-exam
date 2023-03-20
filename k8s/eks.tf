resource "aws_iam_role" "exam" {
  name = "eks-cluster-exam"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
  }
POLICY
}

resource "aws_iam_role_policy_attachment" "exam-AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.exam.name
}

resource "aws_eks_cluster" "exam" {
  name     = "exam"
  role_arn = aws_iam_role.exam.arn

  
  vpc_config {
    subnet_ids = [
      aws_subnet.private-us-east-1a.id,
      aws_subnet.private-us-east-1b.id,
      aws_subnet.public-us-east-1a.id,
      aws_subnet.public-us-east-1b.id
    ]
  }

  depends_on = [aws_iam_role_policy_attachment.exam-AmazonEKSClusterPolicy]
}
