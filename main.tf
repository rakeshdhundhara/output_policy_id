

# resource "newrelic_alert_policy" "rakesh_nrql" {
#   name = var.policy_name
# resource "newrelic_alert_policy" "policy" {
#   count = length(var.policy_names)
#   name  = var.policy_names[count.index]
# }
resource "newrelic_alert_policy" "policy" {
  for_each = toset(var.policy_names)

  name = each.value
}

