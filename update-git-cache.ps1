# Path to your .gitignore file
$gitignorePath = ".\.gitignore"

# Check if .gitignore file exists
if (-Not (Test-Path $gitignorePath)) {
    Write-Host ".gitignore file not found at $gitignorePath"
    exit 1
}

# Read each line from .gitignore
$ignoreEntries = Get-Content $gitignorePath

# Iterate over each entry and remove cached files
foreach ($entry in $ignoreEntries) {
    # Skip empty lines and '#' comments
    if ($entry.Trim() -eq "" -or $entry.Trim().StartsWith("#")) {
        continue
    }
    
    # Use git rm --cached for each entry
    $command = "git rm --cached -r --ignore-unmatch $entry"
    Write-Host "Executing: $command"
    Invoke-Expression $command
}

Write-Host "Completed processing .gitignore entries."
