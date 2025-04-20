# === Configuration ===
$BucketName = "cloud-backup-danylo"  
$BackupDate = "2025-04-21_00-28-29"  # Set the backup date you want to restore
$S3Path = "s3://$BucketName/backups/$BackupDate/"
$RestoreDir = "D:\2024-2026\2025\Danylo_Kizilov's_Portfolio_Project\cloud_backup_system\Cloud-Backup-System\Test"  # Change this line to point to the 'Test' folder

# === File Restoration ===
Write-Host "Restoring files from $S3Path to $RestoreDir..."
aws s3 cp "$S3Path" "$RestoreDir" --recursive --region eu-north-1  # Replace with your region
# === Completion ===
Write-Host "Restore completed to folder: $RestoreDir"
