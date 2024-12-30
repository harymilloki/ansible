Create VM from VMTCA template for RHEL
Logind as root to VMTCA VM
Create dir /home/rpm_update
Copy rpm_downloader.sh and rpm_downloader_cumulative.sh script to /home/rpm_update
Add execution permision to rpm_downloader.sh and rpm_downloader_cumulative.sh
Run rpm_downloader.sh
Run rpm_downloader_cumulative.sh
New RPMs downloaded to /home/lukasz/cumulative_rpms/dowloaded_rpms
Go to /home/rpm_update/cumulative_rpms/
Execute command: createrepo dowloaded_rpms/