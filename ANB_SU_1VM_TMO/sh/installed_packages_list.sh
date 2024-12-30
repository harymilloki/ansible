#!/bin/bash

dir=/home/su
file=$dir/installed_packages_list.txt

# Tworzenie listy RPM-ów
mkdir -p $dir
rpm -qa --qf "%{NAME}\n" > "$file"
echo "Plik $file został utworzony."
