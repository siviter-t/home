#!/bin/bash
# Bootstraps a simple C# .NET template
# See https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-new

DEFAULT_NAME="Siviter.Example"
DEFAULT_TEMPLATE="classlib"
DEFAULT_LANGUAGE="C#"

NAME="${1:-$DEFAULT_NAME}"
TEMPLATE="${2:-$DEFAULT_TEMPLATE}"
LANGUAGE="${3:-$DEFAULT_LANGUAGE}"

echo "Creating $NAME $TEMPLATE project in $LANGUAGE..."

DOTNET_CLI_TELEMETRY_OPTOUT=1 dotnet new $TEMPLATE \
    --name $NAME \
    --output $NAME \
    --language $LANGUAGE
