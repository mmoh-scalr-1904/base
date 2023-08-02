resource "null_resurce" "optional_changes" {
    triggers = {
        conditional == var.question = "yes" ? timestamp() : "unchanged string"
    }
}

variable "question" {
  default = "no"
  type = string
  description = "Do you want your config to be applied again during run?"
}