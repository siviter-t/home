#!/bin/bash
# Adds a project reference to a .NET solution
# See https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-sln

DEFAULT_PROJECT="Siviter.Example"

PROJECT="${1:-$DEFAULT_PROJECT}"
PROJECT_CSPROJ="$PROJECT/$PROJECT.csproj"

REMAINING_ARGS="${@:2}"
PROJECTS_TO_ADD="${REMAINING_ARGS:-$DEFAULT_PATH}"
PROJECT_PATHS=($PROJECTS_TO_ADD)

CSPROJ_PATHS=""
for p in "${PROJECT_PATHS[@]}"; do CSPROJ_PATHS="$CSPROJ_PATHS $p/$p.csproj"; done

echo "Adding references to $PROJECT_CSPROJ..."
echo $CSPROJ_PATHS | tr " " "\n"
echo

DOTNET_CLI_TELEMETRY_OPTOUT=1 dotnet add $PROJECT_CSPROJ reference $CSPROJ_PATHS
