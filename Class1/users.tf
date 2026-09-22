resource "aws_iam_user" "loop" {
  for_each = toset(["tim", "ann", "brad"])
  name = each.value
}