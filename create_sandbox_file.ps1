# Get the current date in yyyyMMdd format
$date = Get-Date -Format "yyyyMMdd"

# Define the base filename
$baseFilename = "sandbox{0}" -f $date
$extension = ".md"
$filename = $baseFilename + $extension

# Check if the original file exists
if (-not (Test-Path -Path $filename -PathType Leaf)) {
    $content = "# {0}" -f $filename
    Set-Content -Path $filename -Value $content
    exit 0
}

# If the original file exists, try with suffixes
for ($i = 1; $i -le 9; $i++) {
    $newFilename = "{0}-{1}{2}" -f $baseFilename, $i, $extension
    if (-not (Test-Path -Path $newFilename -PathType Leaf)) {
        $content = "# {0}" -f $newFilename
        Set-Content -Path $newFilename -Value $content
        exit 0
    }
}

# If all files exist, output an error
Write-Host "ファイルが作成できません"
exit 1
