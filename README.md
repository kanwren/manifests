# manifests

Scripts for managing Windows manifest file preferences and creation

To fix your graphics on some Windows devices, manifest files are required. This
helps you automate the process of setting up and creating those files. You have
two options:

## Using only Windows

Powershell is required in order to set up the registry values and fetch the
necessary files. Open Powershell with `Windows+r` and run the following command:

```powershell
iex (Invoke-WebRequest https://raw.githubusercontent.com/nprindle/manifests/master/ps/setup.ps1).Content
```

This should create the necessary files. Whenever an application's graphics don't
scale properly, paste the full path to the `exe` file in a new line in
`manifests.txt` like in the example below:

```
C:\Program Files\Folder\AppName.exe
```

## Using git-bash or other Unix utilities

Powershell is still required in order to set the registry values (for now).
However, this option lets you create the files through a `curl`/`sh` and
provides a `.sh` file to create the manifest files.

cURL is required in order for the command below to work.

In a terminal or shell, run the following command:

```bash
curl https://raw.githubusercontent.com/nprindle/manifests/master/sh/setup.sh | sh
```

This should create the necessary files. Whenever an application's graphics don't
scale properly, paste the full path to the `exe` file in a new line in
`manifests.txt` like in the example below:

```
/c/Program Files/Folder/AppName.exe
```

