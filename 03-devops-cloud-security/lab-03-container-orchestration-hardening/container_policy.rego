package infrastructure.compliance

default allow = false

# Rule: Allow deployment only if the container explicitly enforces a non-root context
allow {
    not violation_root_user
    not violation_privileged_mode
}

# Identify if user context is missing or explicitly mapped to root (UID 0)
violation_root_user {
    input.services[_].user == "0"
}

# Identify if container is granted dangerous privileged access flags
violation_privileged_mode {
    input.services[_].privileged == true
}
