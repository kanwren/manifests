# Set registry value to prefer external manifest
New-ItemProperty -Path HKLM:/SOFTWARE/Microsoft/Windows/CurrentVersion/SideBySide -Name PreferExternalManifest -Value 1 -PropertyType DWORD

# Copy template manifests file
(Invoke-WebRequest https://raw.githubusercontent.com/nprindle/manifests/master/ps/manifests.txt).Content > manifests.txt

# Copy manifest file
(Invoke-WebRequest https://raw.githubusercontent.com/nprindle/manifests/master/program.manifest).Content > program.manifest

# Copy bat script to create manifests
(Invoke-WebRequest https://raw.githubusercontent.com/nprindle/manifests/master/ps/create.bat).Content > create.bat
