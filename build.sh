#!/bin/bash
set -e

# Install .NET 10 into ~/.dotnet
curl -sSL https://dot.net/v1/dotnet-install.sh | bash -s -- --channel 10.0

# Make dotnet available for the rest of the script
export DOTNET_ROOT="$HOME/.dotnet"
export PATH="$HOME/.dotnet:$PATH"

# Publish
dotnet publish jbbeauregard.dev/jbbeauregard.dev.csproj -c Release -o release
