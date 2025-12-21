#!/usr/bin/env pwsh

# Read version from VERSION file
$version_file = "VERSION"
$version = Get-Content $version_file

# Split version into parts
$version_parts = $version.Split('.')
$major = [int]$version_parts[0]
$minor = [int]$version_parts[1]
$patch = [int]$version_parts[2]

# Increment patch version
$patch++

# Create new version string
$new_version = "$major.$minor.$patch"

# Write new version to VERSION file
Set-Content -Path $version_file -Value $new_version

# Stage the VERSION file
git add $version_file
