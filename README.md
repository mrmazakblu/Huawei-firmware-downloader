# Huawei-firmware-downloader
command-script to download ota-updates from teammt


This is a windows batch porogram that can connect to your Huawei device and read device model number,
it will then search pro-teammt site for full firmware for you device,
gives you a list of available FULLOTA files available.
Choose the version you want to download , the batch file then verifies the download is good by compairing 
the md5 of the downloaded files.


If you are not connecte to device, you can also chose from predefined list of device and model numbers, 
or manuall input desired model number. As of the time of this document creation , the default device list 
matches the supported devices on opinKirn site.

First part of batch is tied to an online update feature, that will check here on github for newest version 
of the script.

After file download, script offers to extract the update.zip files, then extract the images from UPDATE.APP. All 
downloads and extracted files are sent to "Update" folder created on the desktop of the user-profile of loged in user.
Into subfolder order of "device", "build number".

Last section of tool, offers to adb push the update files to external_sdcard on device . To be able to use HWOTA
to flash the update.


Included exectables from:
  
  Splitupdate --- https://github.com/marcominetti/split_updata.pl
  
  perl ----       http://strawberryperl.com/releases.html   64bit 5.26.2.1 portable
  
  cecho ---       https://github.com/lordmulder/cecho
  
  fciv ---        https://www.microsoft.com/en-us/download/details.aspx?id=11533
  
  JREPL.BAT ---   https://github.com/aneeshdurg/JRepl
  
  unzip.exe  ---  http://gnuwin32.sourceforge.net/packages/unzip.htm
  
  wget.exe  ---   http://gnuwin32.sourceforge.net/packages/wget.htm
  
  xml.exe ---     http://xmlstar.sourceforge.net/
  
  merge.bat  ---
  
  
