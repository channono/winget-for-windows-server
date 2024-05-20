# Windows Server 2022 have not include Windows Package Manager   winget,
# For install winget in it, I learn from internet ......
# Gather 2 dependency package : Microsoft.UI.Xaml.2.8.appx and Microsoft.VCLibs.x64.14.00.Desktop.appx
# Download  Microsoft.DesktopAppInstaller_1.22.11261.0_x64__8wekyb3d8bbwe and license file.
# Write this Powershell script to install it.
# Powershell as Administrator to run:   .\install.ps1
# And then open Another Powershell or not, to enter : winget , it's OK, 
# You can see winget worked.
# Version : Windows Package Manager v1.7.11261

if (-not (Test-Path -Path .\microsoft.ui.xaml.2.8.6 ) ){
    Invoke-WebRequest -Uri https://www.nuget.org/api/v2/package/Microsoft.UI.Xaml/2.8.6 -OutFile .\microsoft.ui.xaml.2.8.6.zip
    Expand-Archive -LiteralPath .\microsoft.ui.xaml.2.8.6.zip -DestinationPath .\microsoft.ui.xaml.2.8.6
} else {
    Add-AppxPackage -Path .\microsoft.ui.xaml.2.8.6\tools\AppX\x64\Release\Microsoft.UI.Xaml.2.8.appx 
}

if (-not (Test-Path -Path .\Microsoft.VCLibs.x64.14.00.Desktop.appx ) ){
    Invoke-WebRequest -Uri https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx  -OutFile .\Microsoft.VCLibs.x64.14.00.Desktop.appx
} else {
    Add-AppxPackage -Path .\Microsoft.VCLibs.x64.14.00.Desktop.appx
}
if (-not (Test-Path -Path .\64b03c63cd5d4be8a28e8a271ff853cc_License1.xml ) ){
    Invoke-WebRequest -Uri https://github.com/microsoft/winget-cli/releases/download/v1.7.11261/64b03c63cd5d4be8a28e8a271ff853cc_License1.xml -OutFile .\64b03c63cd5d4be8a28e8a271ff853cc_License1.xml
} 

if (-not (Test-Path -Path .\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle ) ){
    Invoke-WebRequest -Uri https://github.com/microsoft/winget-cli/releases/download/v1.7.11261/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle -OutFile .\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
} else {
    Add-AppxPackage -Path .\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
}

Add-AppxProvisionedPackage -Online -Package .\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle -LicensePath .\64b03c63cd5d4be8a28e8a271ff853cc_License1.xml