#!/bin/bash

current_date=$(date +%Y-%m-%d)
core_dir=/home/rpm_update/erata_tmo_su/
repo_dir="$core_dir/cumulative_rpms_$current_date"
archive_name="SU_TMO_ERATA_$current_date.tar.gz"

rm -rf "$core_dir"/cumulative_rpms_*
mkdir -p "$core_dir/cumulative_rpms_$current_date"

mv /home/installed_packages_list.txt $core_dir

dnf clean all && dnf makecache

while read -r package; do
    dnf download --resolve --arch x86_64,noarch --destdir="$core_dir/cumulative_rpms_$current_date" "$package" || true
done < $core_dir/installed_packages_list.txt


createrepo "$repo_dir"

tar -czvf "$core_dir/$archive_name" -C "$repo_dir" .