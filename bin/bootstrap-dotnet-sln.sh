#!/bin/bash
# Bootstraps a simple .NET solution
# See https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-sln

DEFAULT_NAME="Siviter.Example"

NAME="${1:-$DEFAULT_NAME}"

echo "Creating $NAME solution..."

DOTNET_CLI_TELEMETRY_OPTOUT=1 dotnet new sln \
    --name $NAME
