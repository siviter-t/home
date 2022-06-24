#!/bin/bash
# Adds a project to a .NET solution
# See https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-sln

DEFAULT_SLN=""
DEFAULT_PATH="Siviter.Example"

SLN="${1:-$DEFAULT_SLN}"

REMAINING_ARGS="${@:2}"
PROJECT_PATHS="${REMAINING_ARGS:-$DEFAULT_PATH}"

echo "Adding projects to $SLN..."
echo $PROJECT_PATHS | tr " " "\n"
echo

DOTNET_CLI_TELEMETRY_OPTOUT=1 dotnet sln "$SLN.sln" add $PROJECT_PATHS
