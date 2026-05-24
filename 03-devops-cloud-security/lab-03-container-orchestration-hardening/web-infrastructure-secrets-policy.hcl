# Access control path policy for production service tier
path "secret/data/production/database" {
  capabilities = ["read"]
}

path "secret/data/production/api_keys" {
  capabilities = ["read", "list"]
}

path "secret/data/infrastructure/*" {
  capabilities = ["deny"]
}
