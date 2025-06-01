#!/bin/bash


timestamp=$(date +%F_%H-%M-%S)
backup_dir=~/lia-linux-project/logs/backups/$timestamp

mkdir -p "$backup_dir"
cp -r /var/log/remote "$backup_dir"

echo "Logs backed up to $backup_dir"

# ⬇️ GitHub commit and push
cd ~/lia-linux-project
git add logs/backups/
git commit -m "Daily log backup: $(date +%F_%H:%M:%S)"
git push origin main
#!/bin/bash

timestamp=$(date +%F_%H-%M-%S)
backup_dir=~/lia-linux-project/logs/backups/$timestamp

mkdir -p "$backup_dir"
cp -r /var/log/remote "$backup_dir"

echo "Logs backed up to $backup_dir"

# ⬇️ GitHub commit and push
cd ~/lia-linux-project
git add logs/backups/
git commit -m "Daily log backup: $(date +%F_%H:%M:%S)"
git push origin main







#timestamp=$(date +%F_%H-%M-%S)
#backup_dir=~/lia-linux-project/logs/backups/$timestamp

#mkdir -p "$backup_dir"
#cp -r /var/log/remote "$backup_dir"

#echo "Logs backed up to $backup_dir"
