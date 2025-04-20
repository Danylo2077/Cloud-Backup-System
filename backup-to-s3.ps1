# === Configuration ===
$SourceDir = "D:\2024-2026\2025\Danylo_Kizilov's_Portfolio_Project\cloud_backup_system\Cloud-Backup-System\Test"
$BucketName = "cloud-backup-danylo"  
$Date = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
$S3Path = "s3://$BucketName/backups/$Date/"

# === File Copying ===
Write-Host "Uploading files from $SourceDir to $S3Path..."
aws s3 cp "$SourceDir" "$S3Path" --recursive

# === Completion ===
Write-Host "Backup completed at $Date"
