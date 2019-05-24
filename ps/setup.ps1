echo Setting manifest registry value...
New-ItemProperty -Path HKLM:/SOFTWARE/Microsoft/Windows/CurrentVersion/SideBySide -Name PreferExternalManifest -Value 1 -PropertyType DWORD
echo Done.

echo Copying template manifests file...
(Invoke-WebRequest https://raw.githubusercontent.com/nprindle/manifests/master/ps/manifests.txt).Content > manifests.txt
echo Done.

echo Copying manifest file...
(Invoke-WebRequest https://raw.githubusercontent.com/nprindle/manifests/master/program.manifest).Content > program.manifest
echo Done.

echo Copying manifest creation batch script...
(Invoke-WebRequest https://raw.githubusercontent.com/nprindle/manifests/master/ps/create.bat).Content > create.bat
echo Done.
