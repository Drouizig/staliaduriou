rm -rf static/builds
mkdir static/builds

# Firefox
wget "https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=br" -O static/builds/firefox_win64.exe
wget "https://download.mozilla.org/?product=firefox-latest-ssl&os=win&lang=br" -O static/builds/firefox_win32.exe
wget "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx&lang=br" -O static/builds/firefox_mac.dmg
wget "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=br" -O static/builds/firefox_linux64.tar.bz2
wget "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux&lang=br" -O static/builds/firefox_linux32.tar.bz2

#Thunderbird
wget "https://download.mozilla.org/?product=thunderbird-60.5.1-SSL&os=win&lang=br" -O static/builds/thunderbird_win.exe
wget "https://download.mozilla.org/?product=thunderbird-60.5.1-SSL&os=osx&lang=br" -O static/builds/thunderbird_mac.dmg

# Libreoffice
wget "http://mirror.in2p3.fr/ftp/tdf/libreoffice/stable/6.2.0/win/x86_64/LibreOffice_6.2.0_Win_x64.msi" -O static/builds/libreoffice_win64.msi
wget "http://mirror6.layerjet.com/tdf/libreoffice/stable/6.2.0/win/x86/LibreOffice_6.2.0_Win_x86.msi" -O static/builds/libreoffice_win32.msi
wget "https://mirror.ibcp.fr/pub/tdf/libreoffice/stable/6.2.0/mac/x86_64/LibreOffice_6.2.0_MacOS_x86-64.dmg" -O static/builds/libreoffice_mac.dmg

# Clementine
wget "https://github.com/clementine-player/Clementine/releases/download/1.3.1/ClementineSetup-1.3.1.exe" -O static/builds/clementine_win.exe
wget "https://github.com/clementine-player/Clementine/releases/download/1.3.1/clementine-1.3.1.dmg" -O static/builds/clementine_mac.dmg

# Gimp
wget "https://download.gimp.org/mirror/pub/gimp/v2.10/windows/gimp-2.10.8-setup-2.exe" -O static/builds/gimp_windows.exe
wget "https://download.gimp.org/mirror/pub/gimp/v2.10/osx/gimp-2.10.8-x86_64-2.dmg" -O static/builds/gimp_mac.dmg

# Supertux
wget "https://github.com/SuperTux/supertux/releases/download/v0.6.0/SuperTux-v0.6.0-win64.msi" -O static/builds/supertux_win64.exe
wget "https://github.com/SuperTux/supertux/releases/download/v0.6.0/SuperTux-v0.6.0-win32.msi" -O static/builds/supertux_win32.exe
wget "https://github.com/SuperTux/supertux/releases/download/v0.6.0/SuperTux-v0.6.0-Darwin.dmg" -O static/builds/supertux_mac.dmg

# SuperTuxKart
wget "https://sourceforge.net/projects/supertuxkart/files/SuperTuxKart/0.9.3/supertuxkart-0.9.3-win64.exe/download" -O static/builds/supertuxkart_win64.exe
wget "https://sourceforge.net/projects/supertuxkart/files/SuperTuxKart/0.9.3/supertuxkart-0.9.3-win32.exe/download" -O static/builds/supertuxkart_win32.exe
wget "https://sourceforge.net/projects/supertuxkart/files/SuperTuxKart/0.9.3/SuperTuxKart-0.9.3-osx.dmg/download" -O static/builds/supertuxkart_mac.dmg

#Freeciv
wget "http://files.freeciv.org/packages/windows/Freeciv-2.6.0-win32-gtk3-setup.exe" -O static/builds/freeciv_win32.exe


# Difazier
wget "https://extensions.libreoffice.org/extensions/an-drouizig-breton-spellchecker/0.16/@@download/file/difazier-an-drouizig-0.16.oxt" -O static/builds/difazier_libreoffice.oxt
wget "https://languagetool.org/download/LanguageTool-4.4.1.oxt" -O static/builds/languagetool_libreoffice.oxt
wget "https://addons.mozilla.org/firefox/downloads/file/1689625/difazier_an_drouizig-0.16.xpi" -O static/builds/difazier_firefox.xpi

# An Drouizig Difazier
wget "http://www.drouizig.org/images/stories/difazier/win/pakadaou/breton_spellchecker_m41_2016_x86_win32.msi" -O static/builds/difazier_office1619_32.msi
wget "http://www.drouizig.org/images/stories/difazier/win/pakadaou/breton_spellchecker_m41_2016_x86_win64.exe" -O static/builds/difazier_office1619_64.exe
wget "http://www.drouizig.org/images/stories/difazier/win/pakadaou/breton_spellchecker_m41_2013_x86_win32.msi" -O static/builds/difazier_office13_32.msi
wget "http://www.drouizig.org/images/stories/difazier/win/pakadaou/breton_spellchecker_m41_2013_x86_win64.exe" -O static/builds/difazier_office13_64.exe
wget "http://www.drouizig.org/images/stories/difazier/win/pakadaou/breton_spellchecker_m41_2010_x86_win32.msi" -O static/builds/difazier_office10_32.msi
wget "http://www.drouizig.org/images/stories/difazier/win/pakadaou/breton_spellchecker_m41_2010_x86_win64.exe" -O static/builds/difazier_office10_64.exe
wget "http://www.drouizig.org/images/stories/difazier/win/pakadaou/breton_spellchecker_m41_200x_x86_win32.msi" -O static/builds/difazier_office0007_32.msi
