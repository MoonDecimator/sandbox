# Get the current date
$date = Get-Date -Format "yyyyMMdd"

# Define the base filename
$baseFileName = "sandbox$date"
$extension = ".md"
$fileName = "$baseFileName$extension"

# Check if the original file exists
if (-not (Test-Path -Path $fileName)) {
    $content = "# $fileName"
    New-Item -Path . -Name $fileName -ItemType "file" -Value $content
    return
}

# If the original file exists, try with suffixes
for ($i = 1; $i -le 9; $i++) {
    $newFileName = "$baseFileName-$i$extension"
    if (-not (Test-Path -Path $newFileName)) {
        $content = "# $newFileName"
        New-Item -Path . -Name $newFileName -ItemType "file" -Value $content
        return
    }
}

# If all files exist, output an error
Write-Output "ファイルが作成できません"
