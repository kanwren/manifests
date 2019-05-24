# Set registry value to prefer external manifest
powershell "New-ItemProperty -Path HKLM:/SOFTWARE/Microsoft/Windows/CurrentVersion/SideBySide -Name PreferExternalManifest -Value 1 -PropertyType DWORD"

# Copy template manifests file
curl https://raw.githubusercontent.com/nprindle/manifests/master/sh/manifests.txt > manifests.txt

# Copy manifest file
curl https://raw.githubusercontent.com/nprindle/manifests/master/program.manifest > program.manifest

# Copy sh script to create manifests
curl https://raw.githubusercontent.com/nprindle/manifests/master/sh/create.sh > create.sh
