rm -rf builds
mkdir builds

# Firefox
wget "https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=br" -O builds/firefox_win64.exe
wget "https://download.mozilla.org/?product=firefox-latest-ssl&os=win&lang=br" -O builds/firefox_win32.exe
wget "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx&lang=br" -O builds/firefox_mac.dmg
wget "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=br" -O builds/firefox_linux64.tar.bz2
wget "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux&lang=br" -O builds/firefox_linux32.tar.bz2

#Thunderbird
wget "https://download.mozilla.org/?product=thunderbird-60.5.1-SSL&os=win&lang=br" -O builds/thunderbird_win.exe
wget "https://download.mozilla.org/?product=thunderbird-60.5.1-SSL&os=osx&lang=br" -O builds/thunderburd_mac.dmg

# Libreoffice
wget "https://www.libreoffice.org/donate/dl/win-x86_64/6.2.0/br/LibreOffice_6.2.0_Win_x64.msi" -O builds/libreoffice_win64.msi
wget "https://www.libreoffice.org/donate/dl/win-x86/6.2.0/br/LibreOffice_6.2.0_Win_x86.msi" -O builds/libreoffice_win32.msi
wget "https://www.libreoffice.org/donate/dl/mac-x86_64/6.2.0/br/LibreOffice_6.2.0_MacOS_x86-64.dmg" -O builds/libreoffice_mac.dmg

# Clementine
wget "https://github.com/clementine-player/Clementine/releases/download/1.3.1/ClementineSetup-1.3.1.exe" -O builds/clementine_win.exe
wget "https://github.com/clementine-player/Clementine/releases/download/1.3.1/clementine-1.3.1.dmg" -O builds/clementine_mac.dmg

# Gimp
wget "https://download.gimp.org/mirror/pub/gimp/v2.10/windows/gimp-2.10.8-setup-2.exe" -O builds/gimp_windows.exe
wget "https://download.gimp.org/mirror/pub/gimp/v2.10/osx/gimp-2.10.8-x86_64-2.dmg" -O builds/gimp_mac.dmg

# Supertux
wget "https://github.com/SuperTux/supertux/releases/download/v0.6.0/SuperTux-v0.6.0-win64.msi" -O builds/supertux_win64.exe
wget "https://github.com/SuperTux/supertux/releases/download/v0.6.0/SuperTux-v0.6.0-win32.msi" -O builds/supertux_win32.exe
wget "https://github.com/SuperTux/supertux/releases/download/v0.6.0/SuperTux-v0.6.0-Darwin.dmg" -O builds/supertux_mac.dmg

# SuperTuxKart
wget "https://sourceforge.net/projects/supertuxkart/files/SuperTuxKart/0.9.3/supertuxkart-0.9.3-win64.exe/download" -O builds/supertuxkart_win64.exe
wget "https://sourceforge.net/projects/supertuxkart/files/SuperTuxKart/0.9.3/supertuxkart-0.9.3-win32.exe/download" -O builds/supertuxkart_win32.exe
wget "https://sourceforge.net/projects/supertuxkart/files/SuperTuxKart/0.9.3/SuperTuxKart-0.9.3-osx.dmg/download" -O builds/supertuxkart_mac.dmg

# Difazier Hunspell
wget "https://extensions.libreoffice.org/extensions/an-drouizig-breton-spellchecker/0.16/@@download/file/difazier-an-drouizig-0.16.oxt" -O builds/difazier_libreoffice.oxt

# An Drouizig Difazier
wget "http://www.drouizig.org/images/stories/difazier/win/pakadaou/breton_spellchecker_m41_2016_x86_win32.msi" -O builds/difazier_office1619_64.msi
wget "http://www.drouizig.org/images/stories/difazier/win/pakadaou/breton_spellchecker_m41_2016_x86_win64.exe" -O builds/difazier_office1619_32.exe
wget "http://www.drouizig.org/images/stories/difazier/win/pakadaou/breton_spellchecker_m41_2013_x86_win32.msi" -O builds/difazier_office13_32.msi
wget "http://www.drouizig.org/images/stories/difazier/win/pakadaou/breton_spellchecker_m41_2013_x86_win64.exe" -O builds/difazier_office13_64.exe
wget "http://www.drouizig.org/images/stories/difazier/win/pakadaou/breton_spellchecker_m41_2010_x86_win32.msi" -O builds/difazier_office10_32.msi
wget "http://www.drouizig.org/images/stories/difazier/win/pakadaou/breton_spellchecker_m41_2010_x86_win64.exe" -O builds/difazier_office10_64.exe
wget "http://www.drouizig.org/images/stories/difazier/win/pakadaou/breton_spellchecker_m41_200x_x86_win32.msi" -O builds/difazier_office0007_32.msi
