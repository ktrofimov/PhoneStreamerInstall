# General Symbol Definitions
!define REGKEY "SOFTWARE\$(^Name)"
!define VERSION 2.2.1
!define COMPANY "Kirill Trofimov"
!define URL ktrofimo@gmail.com

# MultiUser Symbol Definitions
!define MULTIUSER_EXECUTIONLEVEL Admin
!define MULTIUSER_MUI
!define MULTIUSER_INSTALLMODE_DEFAULT_REGISTRY_KEY "${REGKEY}"
!define MULTIUSER_INSTALLMODE_DEFAULT_REGISTRY_VALUENAME MultiUserInstallMode
!define MULTIUSER_INSTALLMODE_COMMANDLINE
!define MULTIUSER_INSTALLMODE_INSTDIR "${APPNAME}"
!define MULTIUSER_INSTALLMODE_INSTDIR_REGISTRY_KEY "${REGKEY}"
!define MULTIUSER_INSTALLMODE_INSTDIR_REGISTRY_VALUE "Path"

# MUI Symbol Definitions
!define MUI_ICON images\icon.ico
!define MUI_FINISHPAGE_NOAUTOCLOSE
!define MUI_STARTMENUPAGE_REGISTRY_ROOT HKLM
!define MUI_STARTMENUPAGE_REGISTRY_KEY ${REGKEY}
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME StartMenuGroup
!define MUI_STARTMENUPAGE_DEFAULTFOLDER "${APPNAME}"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\win-uninstall.ico"
!define MUI_UNFINISHPAGE_NOAUTOCLOSE

# Included files
!include MultiUser.nsh
!include Sections.nsh
!include MUI2.nsh
!include x64.nsh

# Reserved Files
ReserveFile "${NSISDIR}\Plugins\AdvSplash.dll"

# Variables
Var StartMenuGroup

# Installer pages
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE license.txt
!insertmacro MULTIUSER_PAGE_INSTALLMODE
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_STARTMENU Application $StartMenuGroup
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES

# Installer languages
!insertmacro MUI_LANGUAGE Russian

# Installer attributes
OutFile ${EXENAME}-${VERSION}-win32-setup.exe
InstallDir "${APPNAME}"
CRCCheck on
# XPStyle on
ShowInstDetails show
VIProductVersion 1.3.0.0
VIAddVersionKey ProductName ${Name}
VIAddVersionKey ProductVersion "${VERSION}"
VIAddVersionKey CompanyName "${COMPANY}"
VIAddVersionKey CompanyWebsite "${URL}"
VIAddVersionKey FileVersion "${VERSION}"
VIAddVersionKey FileDescription ""
VIAddVersionKey LegalCopyright ""
InstallDirRegKey HKLM "${REGKEY}" Path
ShowUninstDetails show

# Installer sections
Section -Main SEC0000
    SetOutPath $INSTDIR
    SetOverwrite on
    File PhoneStreamer.exe
    File PhoneStreamerConfig.exe
    File libgcc_s_dw2-1.dll
    File libstdc++-6.dll
    File libwinpthread-1.dll
    File Qt5Core.dll
    File Qt5Gui.dll
    File Qt5Multimedia.dll
    File Qt5Network.dll
    File Qt5Sql.dll
    File Qt5widgets.dll

    SetOutPath $INSTDIR\audio
    File audio\qtaudio_windows.dll

    SetOutPath $INSTDIR\mediaservice
    File mediaservice\dsengine.dll
    File mediaservice\qtmedia_audioengine.dll

    SetOutPath $INSTDIR\platforms
    File platforms\qminimal.dll
    File platforms\qoffscreen.dll
    File platforms\qwindows.dll

    SetOutPath $INSTDIR\sqldrivers
    File sqldrivers\qsqlite.dll
    File sqldrivers\qsqlmysql.dll
    File sqldrivers\qsqlpsql.dll

    SetOutPath $INSTDIR\translations
    File translations\assistant_cs.qm
    File translations\assistant_da.qm
    File translations\assistant_de.qm
    File translations\assistant_en.qm
    File translations\assistant_fr.qm
    File translations\assistant_hu.qm
    File translations\assistant_ja.qm
    File translations\assistant_ko.qm
    File translations\assistant_pl.qm
    File translations\assistant_ru.qm
    File translations\assistant_sk.qm
    File translations\assistant_sl.qm
    File translations\assistant_uk.qm
    File translations\assistant_zh_CN.qm
    File translations\assistant_zh_TW.qm
    File translations\designer_cs.qm
    File translations\designer_de.qm
    File translations\designer_en.qm
    File translations\designer_fr.qm
    File translations\designer_hu.qm
    File translations\designer_ja.qm
    File translations\designer_ko.qm
    File translations\designer_pl.qm
    File translations\designer_ru.qm
    File translations\designer_sk.qm
    File translations\designer_sl.qm
    File translations\designer_uk.qm
    File translations\designer_zh_CN.qm
    File translations\designer_zh_TW.qm
    File translations\linguist_cs.qm
    File translations\linguist_de.qm
    File translations\linguist_en.qm
    File translations\linguist_fr.qm
    File translations\linguist_hu.qm
    File translations\linguist_ja.qm
    File translations\linguist_ko.qm
    File translations\linguist_pl.qm
    File translations\linguist_ru.qm
    File translations\linguist_sk.qm
    File translations\linguist_sl.qm
    File translations\linguist_uk.qm
    File translations\linguist_zh_CN.qm
    File translations\linguist_zh_TW.qm
    File translations\psc_ru.qm
    File translations\ps_ru.qm
    File translations\qmlviewer_cs.qm
    File translations\qmlviewer_en.qm
    File translations\qmlviewer_fi.qm
    File translations\qmlviewer_fr.qm
    File translations\qmlviewer_he.qm
    File translations\qmlviewer_hu.qm
    File translations\qmlviewer_ja.qm
    File translations\qmlviewer_ko.qm
    File translations\qmlviewer_ru.qm
    File translations\qmlviewer_sk.qm
    File translations\qmlviewer_uk.qm
    File translations\qtbase_ca.qm
    File translations\qtbase_cs.qm
    File translations\qtbase_de.qm
    File translations\qtbase_en.qm
    File translations\qtbase_fi.qm
    File translations\qtbase_fr.qm
    File translations\qtbase_he.qm
    File translations\qtbase_hu.qm
    File translations\qtbase_it.qm
    File translations\qtbase_ja.qm
    File translations\qtbase_ko.qm
    File translations\qtbase_lv.qm
    File translations\qtbase_ru.qm
    File translations\qtbase_sk.qm
    File translations\qtbase_uk.qm
    File translations\qtconfig_hu.qm
    File translations\qtconfig_ja.qm
    File translations\qtconfig_ko.qm
    File translations\qtconfig_pl.qm
    File translations\qtconfig_ru.qm
    File translations\qtconfig_sk.qm
    File translations\qtconfig_sl.qm
    File translations\qtconfig_uk.qm
    File translations\qtconfig_zh_CN.qm
    File translations\qtconfig_zh_TW.qm
    File translations\qtconnectivity_de.qm
    File translations\qtconnectivity_en.qm
    File translations\qtconnectivity_ko.qm
    File translations\qtconnectivity_ru.qm
    File translations\qtconnectivity_uk.qm
    File translations\qtdeclarative_de.qm
    File translations\qtdeclarative_en.qm
    File translations\qtdeclarative_fi.qm
    File translations\qtdeclarative_fr.qm
    File translations\qtdeclarative_ja.qm
    File translations\qtdeclarative_ko.qm
    File translations\qtdeclarative_lv.qm
    File translations\qtdeclarative_ru.qm
    File translations\qtdeclarative_sk.qm
    File translations\qtdeclarative_uk.qm
    File translations\qtlocation_de.qm
    File translations\qtlocation_en.qm
    File translations\qtlocation_fr.qm
    File translations\qtlocation_ko.qm
    File translations\qtlocation_ru.qm
    File translations\qtlocation_uk.qm
    File translations\qtmultimedia_ca.qm
    File translations\qtmultimedia_cs.qm
    File translations\qtmultimedia_de.qm
    File translations\qtmultimedia_en.qm
    File translations\qtmultimedia_fi.qm
    File translations\qtmultimedia_fr.qm
    File translations\qtmultimedia_hu.qm
    File translations\qtmultimedia_it.qm
    File translations\qtmultimedia_ja.qm
    File translations\qtmultimedia_ko.qm
    File translations\qtmultimedia_ru.qm
    File translations\qtmultimedia_sk.qm
    File translations\qtmultimedia_uk.qm
    File translations\qtquick1_ca.qm
    File translations\qtquick1_cs.qm
    File translations\qtquick1_de.qm
    File translations\qtquick1_en.qm
    File translations\qtquick1_fi.qm
    File translations\qtquick1_fr.qm
    File translations\qtquick1_he.qm
    File translations\qtquick1_hu.qm
    File translations\qtquick1_it.qm
    File translations\qtquick1_ja.qm
    File translations\qtquick1_ko.qm
    File translations\qtquick1_ru.qm
    File translations\qtquick1_sk.qm
    File translations\qtquick1_uk.qm
    File translations\qtquickcontrols2_uk.qm
    File translations\qtquickcontrols_de.qm
    File translations\qtquickcontrols_en.qm
    File translations\qtquickcontrols_fi.qm
    File translations\qtquickcontrols_fr.qm
    File translations\qtquickcontrols_ja.qm
    File translations\qtquickcontrols_ru.qm
    File translations\qtquickcontrols_uk.qm
    File translations\qtscript_ca.qm
    File translations\qtscript_cs.qm
    File translations\qtscript_de.qm
    File translations\qtscript_en.qm
    File translations\qtscript_fi.qm
    File translations\qtscript_fr.qm
    File translations\qtscript_he.qm
    File translations\qtscript_hu.qm
    File translations\qtscript_it.qm
    File translations\qtscript_ja.qm
    File translations\qtscript_ko.qm
    File translations\qtscript_lv.qm
    File translations\qtscript_ru.qm
    File translations\qtscript_sk.qm
    File translations\qtscript_uk.qm
    File translations\qtserialport_de.qm
    File translations\qtserialport_en.qm
    File translations\qtserialport_ja.qm
    File translations\qtserialport_ru.qm
    File translations\qtserialport_uk.qm
    File translations\qtwebengine_de.qm
    File translations\qtwebengine_en.qm
    File translations\qtwebengine_ru.qm
    File translations\qtwebengine_uk.qm
    File translations\qtwebsockets_de.qm
    File translations\qtwebsockets_en.qm
    File translations\qtwebsockets_fr.qm
    File translations\qtwebsockets_ja.qm
    File translations\qtwebsockets_ru.qm
    File translations\qtwebsockets_uk.qm
    File translations\qtxmlpatterns_ca.qm
    File translations\qtxmlpatterns_cs.qm
    File translations\qtxmlpatterns_de.qm
    File translations\qtxmlpatterns_en.qm
    File translations\qtxmlpatterns_fr.qm
    File translations\qtxmlpatterns_hu.qm
    File translations\qtxmlpatterns_it.qm
    File translations\qtxmlpatterns_ja.qm
    File translations\qtxmlpatterns_ko.qm
    File translations\qtxmlpatterns_ru.qm
    File translations\qtxmlpatterns_sk.qm
    File translations\qtxmlpatterns_uk.qm
    File translations\qt_ar.qm
    File translations\qt_ca.qm
    File translations\qt_cs.qm
    File translations\qt_da.qm
    File translations\qt_de.qm
    File translations\qt_en.qm
    File translations\qt_es.qm
    File translations\qt_fa.qm
    File translations\qt_fi.qm
    File translations\qt_fr.qm
    File translations\qt_gl.qm
    File translations\qt_he.qm
    File translations\qt_help_cs.qm
    File translations\qt_help_da.qm
    File translations\qt_help_de.qm
    File translations\qt_help_en.qm
    File translations\qt_help_fr.qm
    File translations\qt_help_gl.qm
    File translations\qt_help_hu.qm
    File translations\qt_help_it.qm
    File translations\qt_help_ja.qm
    File translations\qt_help_ko.qm
    File translations\qt_help_pl.qm
    File translations\qt_help_ru.qm
    File translations\qt_help_sk.qm
    File translations\qt_help_sl.qm
    File translations\qt_help_uk.qm
    File translations\qt_help_zh_CN.qm
    File translations\qt_help_zh_TW.qm
    File translations\qt_hu.qm
    File translations\qt_it.qm
    File translations\qt_ja.qm
    File translations\qt_ko.qm
    File translations\qt_lt.qm
    File translations\qt_pl.qm
    File translations\qt_pt.qm
    File translations\qt_ru.qm
    File translations\qt_sk.qm
    File translations\qt_sl.qm
    File translations\qt_sv.qm
    File translations\qt_uk.qm
    File translations\qt_zh_CN.qm
    File translations\qt_zh_TW.qm

    SetOutPath $SYSDIR
    File postgresql\libeay32.dll             
    File postgresql\libecpg.dll              
    File postgresql\libecpg_compat.dll       
    File postgresql\libiconv-2.dll           
    File postgresql\libintl-8.dll            
    File postgresql\libpgtypes.dll           
    File postgresql\libpq.dll                
    File postgresql\libxml2.dll              
    File postgresql\libxslt.dll              
    File postgresql\ssleay32.dll             
    File postgresql\wxbase28u_net_vc_custom.dll
    File postgresql\wxbase28u_vc_custom.dll  
    File postgresql\wxbase28u_xml_vc_custom.dll
    File postgresql\wxmsw28u_adv_vc_custom.dll
    File postgresql\wxmsw28u_aui_vc_custom.dll
    File postgresql\wxmsw28u_core_vc_custom.dll
    File postgresql\wxmsw28u_html_vc_custom.dll
    File postgresql\wxmsw28u_stc_vc_custom.dll
    File postgresql\wxmsw28u_xrc_vc_custom.dll
    File postgresql\zlib1.dll                

    WriteRegStr HKLM "${REGKEY}\Components" Main 1
    !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
    SetOutPath $SMPROGRAMS\$StartMenuGroup

    CreateShortcut "$SMPROGRAMS\$StartMenuGroup\SIP Phone Streamer.lnk" \
	    $INSTDIR\PhoneStreamer.exe

    CreateShortcut "$SMPROGRAMS\$StartMenuGroup\SIP Phone Streamer Config.lnk" \
	    $INSTDIR\PhoneStreamerConfig.exe

    !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

Section -post SEC0001
    WriteRegStr HKLM "${REGKEY}" Path $INSTDIR
    SetOutPath $INSTDIR
    WriteUninstaller $INSTDIR\${EXENAME}-uninstall.exe
    !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
    SetOutPath $SMPROGRAMS\$StartMenuGroup
    CreateShortcut "$SMPROGRAMS\$StartMenuGroup\Uninstall $(^Name).lnk" $INSTDIR\${EXENAME}-uninstall.exe
    !insertmacro MUI_STARTMENU_WRITE_END
    WriteRegStr HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" DisplayName "$(^Name)"
    WriteRegStr HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" DisplayVersion "${VERSION}"
    WriteRegStr HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" Publisher "${COMPANY}"
    WriteRegStr HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" URLInfoAbout "${URL}"
    WriteRegStr HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" DisplayIcon $INSTDIR\${EXENAME}-uninstall.exe
    WriteRegStr HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" UninstallString $INSTDIR\${EXENAME}-uninstall.exe
    WriteRegDWORD HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" NoModify 1
    WriteRegDWORD HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" NoRepair 1
SectionEnd

# Macro for selecting uninstaller sections
!macro SELECT_UNSECTION SECTION_NAME UNSECTION_ID
    Push $R0
    ReadRegStr $R0 HKLM "${REGKEY}\Components" "${SECTION_NAME}"
    StrCmp $R0 1 0 next${UNSECTION_ID}
    !insertmacro SelectSection "${UNSECTION_ID}"
    GoTo done${UNSECTION_ID}
next${UNSECTION_ID}:
    !insertmacro UnselectSection "${UNSECTION_ID}"
done${UNSECTION_ID}:
    Pop $R0
!macroend

# Uninstaller sections
Section /o -un.Main UNSEC0000
    Delete /REBOOTOK $INSTDIR\PhoneStreamer.exe
    Delete /REBOOTOK $INSTDIR\PhoneStreamerConfig.exe
    Delete /REBOOTOK $INSTDIR\libgcc_s_dw2-1.dll
    Delete /REBOOTOK $INSTDIR\libstdc++-6.dll
    Delete /REBOOTOK $INSTDIR\libwinpthread-1.dll
    Delete /REBOOTOK $INSTDIR\Qt5Core.dll
    Delete /REBOOTOK $INSTDIR\Qt5Gui.dll
    Delete /REBOOTOK $INSTDIR\Qt5Multimedia.dll
    Delete /REBOOTOK $INSTDIR\Qt5Network.dll
    Delete /REBOOTOK $INSTDIR\Qt5Sql.dll
    Delete /REBOOTOK $INSTDIR\Qt5widgets.dll
    Delete /REBOOTOK $INSTDIR\settings.ini

    Delete /REBOOTOK $INSTDIR\audio\qtaudio_windows.dll

    Delete /REBOOTOK $INSTDIR\mediaservice\dsengine.dll
    Delete /REBOOTOK $INSTDIR\mediaservice\qtmedia_audioengine.dll

    Delete /REBOOTOK $INSTDIR\platforms\qminimal.dll
    Delete /REBOOTOK $INSTDIR\platforms\qoffscreen.dll
    Delete /REBOOTOK $INSTDIR\platforms\qwindows.dll

    Delete /REBOOTOK $INSTDIR\sqldrivers\qsqlite.dll
    Delete /REBOOTOK $INSTDIR\sqldrivers\qsqlmysql.dll
    Delete /REBOOTOK $INSTDIR\sqldrivers\qsqlpsql.dll

    Delete /REBOOTOK $INSTDIR\translations\assistant_cs.qm
    Delete /REBOOTOK $INSTDIR\translations\assistant_da.qm
    Delete /REBOOTOK $INSTDIR\translations\assistant_de.qm
    Delete /REBOOTOK $INSTDIR\translations\assistant_en.qm
    Delete /REBOOTOK $INSTDIR\translations\assistant_fr.qm
    Delete /REBOOTOK $INSTDIR\translations\assistant_hu.qm
    Delete /REBOOTOK $INSTDIR\translations\assistant_ja.qm
    Delete /REBOOTOK $INSTDIR\translations\assistant_ko.qm
    Delete /REBOOTOK $INSTDIR\translations\assistant_pl.qm
    Delete /REBOOTOK $INSTDIR\translations\assistant_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\assistant_sk.qm
    Delete /REBOOTOK $INSTDIR\translations\assistant_sl.qm
    Delete /REBOOTOK $INSTDIR\translations\assistant_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\assistant_zh_CN.qm
    Delete /REBOOTOK $INSTDIR\translations\assistant_zh_TW.qm
    Delete /REBOOTOK $INSTDIR\translations\designer_cs.qm
    Delete /REBOOTOK $INSTDIR\translations\designer_de.qm
    Delete /REBOOTOK $INSTDIR\translations\designer_en.qm
    Delete /REBOOTOK $INSTDIR\translations\designer_fr.qm
    Delete /REBOOTOK $INSTDIR\translations\designer_hu.qm
    Delete /REBOOTOK $INSTDIR\translations\designer_ja.qm
    Delete /REBOOTOK $INSTDIR\translations\designer_ko.qm
    Delete /REBOOTOK $INSTDIR\translations\designer_pl.qm
    Delete /REBOOTOK $INSTDIR\translations\designer_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\designer_sk.qm
    Delete /REBOOTOK $INSTDIR\translations\designer_sl.qm
    Delete /REBOOTOK $INSTDIR\translations\designer_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\designer_zh_CN.qm
    Delete /REBOOTOK $INSTDIR\translations\designer_zh_TW.qm
    Delete /REBOOTOK $INSTDIR\translations\linguist_cs.qm
    Delete /REBOOTOK $INSTDIR\translations\linguist_de.qm
    Delete /REBOOTOK $INSTDIR\translations\linguist_en.qm
    Delete /REBOOTOK $INSTDIR\translations\linguist_fr.qm
    Delete /REBOOTOK $INSTDIR\translations\linguist_hu.qm
    Delete /REBOOTOK $INSTDIR\translations\linguist_ja.qm
    Delete /REBOOTOK $INSTDIR\translations\linguist_ko.qm
    Delete /REBOOTOK $INSTDIR\translations\linguist_pl.qm
    Delete /REBOOTOK $INSTDIR\translations\linguist_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\linguist_sk.qm
    Delete /REBOOTOK $INSTDIR\translations\linguist_sl.qm
    Delete /REBOOTOK $INSTDIR\translations\linguist_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\linguist_zh_CN.qm
    Delete /REBOOTOK $INSTDIR\translations\linguist_zh_TW.qm
    Delete /REBOOTOK $INSTDIR\translations\psc_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\ps_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\qmlviewer_cs.qm
    Delete /REBOOTOK $INSTDIR\translations\qmlviewer_en.qm
    Delete /REBOOTOK $INSTDIR\translations\qmlviewer_fi.qm
    Delete /REBOOTOK $INSTDIR\translations\qmlviewer_fr.qm
    Delete /REBOOTOK $INSTDIR\translations\qmlviewer_he.qm
    Delete /REBOOTOK $INSTDIR\translations\qmlviewer_hu.qm
    Delete /REBOOTOK $INSTDIR\translations\qmlviewer_ja.qm
    Delete /REBOOTOK $INSTDIR\translations\qmlviewer_ko.qm
    Delete /REBOOTOK $INSTDIR\translations\qmlviewer_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\qmlviewer_sk.qm
    Delete /REBOOTOK $INSTDIR\translations\qmlviewer_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtbase_ca.qm
    Delete /REBOOTOK $INSTDIR\translations\qtbase_cs.qm
    Delete /REBOOTOK $INSTDIR\translations\qtbase_de.qm
    Delete /REBOOTOK $INSTDIR\translations\qtbase_en.qm
    Delete /REBOOTOK $INSTDIR\translations\qtbase_fi.qm
    Delete /REBOOTOK $INSTDIR\translations\qtbase_fr.qm
    Delete /REBOOTOK $INSTDIR\translations\qtbase_he.qm
    Delete /REBOOTOK $INSTDIR\translations\qtbase_hu.qm
    Delete /REBOOTOK $INSTDIR\translations\qtbase_it.qm
    Delete /REBOOTOK $INSTDIR\translations\qtbase_ja.qm
    Delete /REBOOTOK $INSTDIR\translations\qtbase_ko.qm
    Delete /REBOOTOK $INSTDIR\translations\qtbase_lv.qm
    Delete /REBOOTOK $INSTDIR\translations\qtbase_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\qtbase_sk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtbase_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtconfig_hu.qm
    Delete /REBOOTOK $INSTDIR\translations\qtconfig_ja.qm
    Delete /REBOOTOK $INSTDIR\translations\qtconfig_ko.qm
    Delete /REBOOTOK $INSTDIR\translations\qtconfig_pl.qm
    Delete /REBOOTOK $INSTDIR\translations\qtconfig_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\qtconfig_sk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtconfig_sl.qm
    Delete /REBOOTOK $INSTDIR\translations\qtconfig_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtconfig_zh_CN.qm
    Delete /REBOOTOK $INSTDIR\translations\qtconfig_zh_TW.qm
    Delete /REBOOTOK $INSTDIR\translations\qtconnectivity_de.qm
    Delete /REBOOTOK $INSTDIR\translations\qtconnectivity_en.qm
    Delete /REBOOTOK $INSTDIR\translations\qtconnectivity_ko.qm
    Delete /REBOOTOK $INSTDIR\translations\qtconnectivity_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\qtconnectivity_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtdeclarative_de.qm
    Delete /REBOOTOK $INSTDIR\translations\qtdeclarative_en.qm
    Delete /REBOOTOK $INSTDIR\translations\qtdeclarative_fi.qm
    Delete /REBOOTOK $INSTDIR\translations\qtdeclarative_fr.qm
    Delete /REBOOTOK $INSTDIR\translations\qtdeclarative_ja.qm
    Delete /REBOOTOK $INSTDIR\translations\qtdeclarative_ko.qm
    Delete /REBOOTOK $INSTDIR\translations\qtdeclarative_lv.qm
    Delete /REBOOTOK $INSTDIR\translations\qtdeclarative_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\qtdeclarative_sk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtdeclarative_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtlocation_de.qm
    Delete /REBOOTOK $INSTDIR\translations\qtlocation_en.qm
    Delete /REBOOTOK $INSTDIR\translations\qtlocation_fr.qm
    Delete /REBOOTOK $INSTDIR\translations\qtlocation_ko.qm
    Delete /REBOOTOK $INSTDIR\translations\qtlocation_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\qtlocation_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtmultimedia_ca.qm
    Delete /REBOOTOK $INSTDIR\translations\qtmultimedia_cs.qm
    Delete /REBOOTOK $INSTDIR\translations\qtmultimedia_de.qm
    Delete /REBOOTOK $INSTDIR\translations\qtmultimedia_en.qm
    Delete /REBOOTOK $INSTDIR\translations\qtmultimedia_fi.qm
    Delete /REBOOTOK $INSTDIR\translations\qtmultimedia_fr.qm
    Delete /REBOOTOK $INSTDIR\translations\qtmultimedia_hu.qm
    Delete /REBOOTOK $INSTDIR\translations\qtmultimedia_it.qm
    Delete /REBOOTOK $INSTDIR\translations\qtmultimedia_ja.qm
    Delete /REBOOTOK $INSTDIR\translations\qtmultimedia_ko.qm
    Delete /REBOOTOK $INSTDIR\translations\qtmultimedia_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\qtmultimedia_sk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtmultimedia_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquick1_ca.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquick1_cs.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquick1_de.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquick1_en.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquick1_fi.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquick1_fr.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquick1_he.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquick1_hu.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquick1_it.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquick1_ja.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquick1_ko.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquick1_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquick1_sk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquick1_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquickcontrols2_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquickcontrols_de.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquickcontrols_en.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquickcontrols_fi.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquickcontrols_fr.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquickcontrols_ja.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquickcontrols_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\qtquickcontrols_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtscript_ca.qm
    Delete /REBOOTOK $INSTDIR\translations\qtscript_cs.qm
    Delete /REBOOTOK $INSTDIR\translations\qtscript_de.qm
    Delete /REBOOTOK $INSTDIR\translations\qtscript_en.qm
    Delete /REBOOTOK $INSTDIR\translations\qtscript_fi.qm
    Delete /REBOOTOK $INSTDIR\translations\qtscript_fr.qm
    Delete /REBOOTOK $INSTDIR\translations\qtscript_he.qm
    Delete /REBOOTOK $INSTDIR\translations\qtscript_hu.qm
    Delete /REBOOTOK $INSTDIR\translations\qtscript_it.qm
    Delete /REBOOTOK $INSTDIR\translations\qtscript_ja.qm
    Delete /REBOOTOK $INSTDIR\translations\qtscript_ko.qm
    Delete /REBOOTOK $INSTDIR\translations\qtscript_lv.qm
    Delete /REBOOTOK $INSTDIR\translations\qtscript_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\qtscript_sk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtscript_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtserialport_de.qm
    Delete /REBOOTOK $INSTDIR\translations\qtserialport_en.qm
    Delete /REBOOTOK $INSTDIR\translations\qtserialport_ja.qm
    Delete /REBOOTOK $INSTDIR\translations\qtserialport_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\qtserialport_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtwebengine_de.qm
    Delete /REBOOTOK $INSTDIR\translations\qtwebengine_en.qm
    Delete /REBOOTOK $INSTDIR\translations\qtwebengine_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\qtwebengine_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtwebsockets_de.qm
    Delete /REBOOTOK $INSTDIR\translations\qtwebsockets_en.qm
    Delete /REBOOTOK $INSTDIR\translations\qtwebsockets_fr.qm
    Delete /REBOOTOK $INSTDIR\translations\qtwebsockets_ja.qm
    Delete /REBOOTOK $INSTDIR\translations\qtwebsockets_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\qtwebsockets_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtxmlpatterns_ca.qm
    Delete /REBOOTOK $INSTDIR\translations\qtxmlpatterns_cs.qm
    Delete /REBOOTOK $INSTDIR\translations\qtxmlpatterns_de.qm
    Delete /REBOOTOK $INSTDIR\translations\qtxmlpatterns_en.qm
    Delete /REBOOTOK $INSTDIR\translations\qtxmlpatterns_fr.qm
    Delete /REBOOTOK $INSTDIR\translations\qtxmlpatterns_hu.qm
    Delete /REBOOTOK $INSTDIR\translations\qtxmlpatterns_it.qm
    Delete /REBOOTOK $INSTDIR\translations\qtxmlpatterns_ja.qm
    Delete /REBOOTOK $INSTDIR\translations\qtxmlpatterns_ko.qm
    Delete /REBOOTOK $INSTDIR\translations\qtxmlpatterns_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\qtxmlpatterns_sk.qm
    Delete /REBOOTOK $INSTDIR\translations\qtxmlpatterns_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_ar.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_ca.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_cs.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_da.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_de.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_en.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_es.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_fa.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_fi.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_fr.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_gl.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_he.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_help_cs.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_help_da.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_help_de.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_help_en.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_help_fr.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_help_gl.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_help_hu.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_help_it.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_help_ja.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_help_ko.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_help_pl.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_help_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_help_sk.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_help_sl.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_help_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_help_zh_CN.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_help_zh_TW.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_hu.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_it.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_ja.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_ko.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_lt.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_pl.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_pt.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_ru.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_sk.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_sl.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_sv.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_uk.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_zh_CN.qm
    Delete /REBOOTOK $INSTDIR\translations\qt_zh_TW.qm
    Delete /REBOOTOK $INSTDIR\audio
    Delete /REBOOTOK $INSTDIR\platforms
    Delete /REBOOTOK $INSTDIR\sqldrivers
    Delete /REBOOTOK $INSTDIR\mediaservice
    Delete /REBOOTOK $INSTDIR\translations
    Delete /REBOOTOK $INSTDIR
    
    DeleteRegValue HKLM "${REGKEY}\Components" Main
SectionEnd

Section -un.post UNSEC0001
    Delete /REBOOTOK "$SMPROGRAMS\$StartMenuGroup\SIP Phone Streamer.lnk"
    Delete /REBOOTOK "$SMPROGRAMS\$StartMenuGroup\SIP Phone Streamer Config.lnk"
    DeleteRegKey HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)"
    Delete /REBOOTOK "$SMPROGRAMS\$StartMenuGroup\Uninstall $(^Name).lnk"
    Delete /REBOOTOK "$SMPROGRAMS\$StartMenuGroup"
    Delete /REBOOTOK $INSTDIR\${EXENAME}-uninstall.exe
    DeleteRegValue HKLM "${REGKEY}" StartMenuGroup
    DeleteRegValue HKLM "${REGKEY}" Path
    DeleteRegKey /IfEmpty HKLM "${REGKEY}\Components"
    DeleteRegKey /IfEmpty HKLM "${REGKEY}"
    RmDir /REBOOTOK $SMPROGRAMS\$StartMenuGroup
    RmDir /REBOOTOK $INSTDIR
    Push $R0
    StrCpy $R0 $StartMenuGroup 1
    StrCmp $R0 ">" no_smgroup
no_smgroup:
    Pop $R0
SectionEnd

# Installer functions
Function .onInit
    InitPluginsDir
    Push $R1
    File /oname=$PLUGINSDIR\spltmp.bmp images\logo.bmp
    advsplash::show 1000 600 400 -1 $PLUGINSDIR\spltmp
    Pop $R1
    Pop $R1
    !insertmacro MULTIUSER_INIT
FunctionEnd

!ifndef ONINIT
# Uninstaller functions
Function un.onInit
    !insertmacro MUI_STARTMENU_GETFOLDER Application $StartMenuGroup
    !insertmacro MULTIUSER_UNINIT
    !insertmacro SELECT_UNSECTION Main ${UNSEC0000}
FunctionEnd
!endif

