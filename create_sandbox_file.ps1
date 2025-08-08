# Get the current date
$date = Get-Date -Format "yyyyMMdd"

# Define the filename
$fileName = "sandbox$date.md"

# Define the content
$content = "# $fileName"

# Create the file and write the content
New-Item -Path . -Name $fileName -ItemType "file" -Value $content
