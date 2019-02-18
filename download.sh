rm -rf builds
mkdir builds
wget "https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=br" -O builds/firefox_win64.exe
wget "https://download.mozilla.org/?product=firefox-latest-ssl&os=win&lang=br" -O builds/firefox_win32.exe
wget "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx&lang=br" -O builds/firefox_mac.dmg
wget "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=br" -O builds/firefox_linux64.tar.bz2
wget "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux&lang=br" -O builds/firefox_linux32.tar.bz2
wget "https://www.libreoffice.org/donate/dl/win-x86_64/6.2.0/br/LibreOffice_6.2.0_Win_x64.msi" -O builds/libreoffice_win64.msi
wget "https://www.libreoffice.org/donate/dl/win-x86/6.2.0/br/LibreOffice_6.2.0_Win_x86.msi" -O builds/libreoffice_win32.msi
wget "https://www.libreoffice.org/donate/dl/mac-x86_64/6.2.0/br/LibreOffice_6.2.0_MacOS_x86-64.dmg" -O builds/libreoffice_mac.dmg
