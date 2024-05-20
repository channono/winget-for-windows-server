Windows Server 2022 does not contain the MS Store, can not use winget to install packages,
I searched for some methods from the Internet, many will be wrong, 
and finally through the method of this article to install successfully!

https://www.how2shout.com/how-to/how-to-install-winget-package-manager-in-windows-2022-server.html
The files you need to download are listed below, you can download them to install winget.

I put the required Powershell script in install.ps1, and execute it in Powershell.

step:

Run powershell as an administrator

   .\install.ps1

   Waiting for a long time.......
   automate download package of needed。
	
      1. microsoft.ui.xaml.2.8.6
		
      2. Microsoft.VCLibs.x64.14.00.Desktop.appx
		
      3. 64b03c63cd5d4be8a28e8a271ff853cc_License1.xml
		
      4. Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
		
   
   all finished .

  Try type ： 
  winget 
  
