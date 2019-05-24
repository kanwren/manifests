echo "Setting manifest registry value..."
powershell "New-ItemProperty -Path HKLM:/SOFTWARE/Microsoft/Windows/CurrentVersion/SideBySide -Name PreferExternalManifest -Value 1 -PropertyType DWORD"
echo "Done."

echo "Copying template manifests file..."
curl https://raw.githubusercontent.com/nprindle/manifests/master/sh/manifests.txt > manifests.txt
echo "Done."

echo "Copying manifest file..."
curl https://raw.githubusercontent.com/nprindle/manifests/master/program.manifest > program.manifest
echo "Done."

echo "Copying manifest creation shell script..."
curl https://raw.githubusercontent.com/nprindle/manifests/master/sh/create.sh > create.sh
echo "Done."
