#!/bin/bash

# Path to kubeconfig (change if different)
KUBECONFIG_FILE="$HOME/.kube/config"

echo "=== Checking kubeconfig file: $KUBECONFIG_FILE ==="
if [ ! -f "$KUBECONFIG_FILE" ]; then
    echo "ERROR: Kubeconfig file not found at $KUBECONFIG_FILE"
    exit 1
fi

# Check if 'exec' section exists in kubeconfig
if ! grep -q "exec:" "$KUBECONFIG_FILE"; then
    echo "WARNING: No 'exec' section found in kubeconfig."
    echo "-> This likely means kubectl will prompt for username/password."
    echo "-> Re-run: oci ce cluster create-kubeconfig --token-version 2.0.0 ..."
else
    echo "OK: 'exec' section found. Kubeconfig should use OCI CLI for tokens."
fi

# Check if OCI CLI is installed and in PATH
if ! command -v oci >/dev/null 2>&1; then
    echo "ERROR: OCI CLI not installed or not in PATH."
    echo "-> Install: https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/cliinstall.htm"
    exit 1
else
    echo "OK: OCI CLI is installed."
fi

# Test OCI CLI configuration
echo "Testing OCI CLI config..."
if ! oci iam region list >/dev/null 2>&1; then
    echo "ERROR: OCI CLI config invalid or missing API keys."
    echo "-> Run: oci setup config"
    exit 1
else
    echo "OK: OCI CLI configuration works."
fi

# Show current kubectl context
echo "Current kubectl context:"
kubectl config current-context

# Test cluster connection
echo "Testing kubectl connection..."
if ! kubectl get nodes >/dev/null 2>&1; then
    echo "ERROR: Unable to connect to OKE cluster."
    echo "-> Check network access (VPN if private endpoint), region, and kubeconfig."
else
    echo "SUCCESS: kubectl connected to OKE cluster and fetched nodes."
fi
