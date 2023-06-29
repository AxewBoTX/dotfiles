# Install Guide

## WSL(System Drive)

1. Open **Turn Windows Features on or off**
2. A dialog box will open, turn on **Virtual Machine Platform** and **Windows Subsystem For Linux** and click Ok.
3. Restart your computer.
4. Open Microsoft Store and install Ubuntu.
5. Install [wsl2kernel](https://aka.ms/wsl2kernel)
6. Restart Your Computer
7. Either open **Ubuntu** straight up by searching it or open it through Windows Terminal.
8. Setup your profile and follow the next steps.

## WSL(Other Drive)

> NOTE: Only Use This Method If You Havnt Already Installed Any WSL Distro On Your System

1. Make a folder called **WSL** in whichever directory you want.
2. Make a another folder and name it to the name of distro that you want to install.
3. Go to [this](https://learn.microsoft.com/en-us/windows/wsl/install-manual#downloading-distributions) page and download whichever distro you want.
4. Extract the downloaded file. You will see many files, just extract the the file with **x64** in its name into a new folder.
5. Make sure there is a .tar.gz file in that folder.
6. Run the Following command to install WSL on that drive:-

```
wsl --import Name_For_Distro "/location/where/you/want/to/install/it" "path/to/.tar.gz/file"
```

7. If you are installing Arch linux that you might also need to setep a user for that, you can check on youtube for how to do that.
