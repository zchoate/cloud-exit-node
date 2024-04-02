// create one-time key for joining server to tailscale
resource "tailscale_tailnet_key" "exit_node" {
  reusable      = false
  ephemeral     = false
  preauthorized = true
  description   = "cloud-exit-node"
  tags          = ["tag:unattended", "tag:exit-node"]
}