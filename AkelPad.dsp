# Microsoft Developer Studio Project File - Name="AkelPad" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=AkelPad - Win32 Debug English
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "AkelPad.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "AkelPad.mak" CFG="AkelPad - Win32 Debug English"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "AkelPad - Win32 Library Debug English" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "AkelPad - Win32 Dinamic Release English" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "AkelPad - Win32 Release English" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "AkelPad - Win32 Debug English" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "AkelPad - Win32 Library Debug English"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "DEBUG" /D "AKELEDIT_STATICBUILD" /D RC_VERSIONLANGID=0x409 /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "DEBUG" /D "AKELPAD_DLLBUILD" /D "AKELEDIT_STATICBUILD" /D RC_VERSIONLANGID=0x409 /YX /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /i "AkelEdit\Resources" /d "_DEBUG" /d "AKELEDIT_STATICBUILD" /d "RC_EXEVERSION" /d RC_VERSIONLANGID=0x409 /d RC_VERSIONBIT=32
# ADD RSC /l 0x409 /i "AkelEdit\Resources" /d "_DEBUG" /d "AKELEDIT_STATICBUILD" /d "RC_EXEVERSION" /d RC_VERSIONLANGID=0x409 /d RC_VERSIONBIT=32
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib advapi32.lib shell32.lib comctl32.lib comdlg32.lib ole32.lib uuid.lib imm32.lib version.lib libc.lib /nologo /entry:"_WinMain" /subsystem:windows /debug /machine:I386 /nodefaultlib /pdbtype:sept
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 kernel32.lib user32.lib gdi32.lib advapi32.lib shell32.lib comctl32.lib comdlg32.lib ole32.lib oleaut32.lib uuid.lib imm32.lib version.lib libc.lib /nologo /entry:"DllMain" /dll /debug /machine:I386 /nodefaultlib /pdbtype:sept
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "AkelPad - Win32 Dinamic Release English"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O1 /D "WIN32" /D "NDEBUG" /D "AKELEDIT_STATICBUILD" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GX /O1 /D "WIN32" /D "NDEBUG" /D RC_VERSIONLANGID=0x409 /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG" /d "RC_EXEVERSION"
# ADD RSC /l 0x409 /d "NDEBUG" /d "RC_EXEVERSION" /d RC_VERSIONLANGID=0x409 /d RC_VERSIONBIT=32
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib advapi32.lib shell32.lib comctl32.lib comdlg32.lib ole32.lib uuid.lib version.lib libc.lib /nologo /entry:"_WinMain" /subsystem:windows /machine:I386 /nodefaultlib /opt:nowin98
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 kernel32.lib user32.lib gdi32.lib advapi32.lib shell32.lib comctl32.lib comdlg32.lib oleaut32.lib uuid.lib version.lib /nologo /entry:"_WinMain" /subsystem:windows /machine:I386 /nodefaultlib /opt:nowin98
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "AkelPad - Win32 Release English"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "AkelPad_EXPORTS" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GX /O1 /D "WIN32" /D "NDEBUG" /D "AKELEDIT_STATICBUILD" /D RC_VERSIONLANGID=0x409 /FR /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /i "AkelEdit\Resources" /d "NDEBUG" /d "AKELEDIT_STATICBUILD" /d "RC_EXEVERSION" /d RC_VERSIONLANGID=0x409 /d RC_VERSIONBIT=32
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib advapi32.lib shell32.lib comctl32.lib comdlg32.lib ole32.lib oleaut32.lib uuid.lib imm32.lib version.lib /nologo /entry:"_WinMain" /subsystem:windows /machine:I386 /nodefaultlib /opt:nowin98
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "AkelPad - Win32 Debug English"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "AkelPad_EXPORTS" /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "DEBUG" /D "AKELEDIT_STATICBUILD" /D RC_VERSIONLANGID=0x409 /YX /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /i "AkelEdit\Resources" /d "_DEBUG" /d "AKELEDIT_STATICBUILD" /d "RC_EXEVERSION" /d RC_VERSIONLANGID=0x409 /d RC_VERSIONBIT=32
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib advapi32.lib shell32.lib comctl32.lib comdlg32.lib ole32.lib oleaut32.lib uuid.lib imm32.lib version.lib libc.lib /nologo /entry:"_WinMain" /subsystem:windows /debug /machine:I386 /nodefaultlib /pdbtype:sept
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "AkelPad - Win32 Library Debug English"
# Name "AkelPad - Win32 Dinamic Release English"
# Name "AkelPad - Win32 Release English"
# Name "AkelPad - Win32 Debug English"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\AkelEdit\AkelEdit.c

!IF  "$(CFG)" == "AkelPad - Win32 Library Debug English"

!ELSEIF  "$(CFG)" == "AkelPad - Win32 Dinamic Release English"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "AkelPad - Win32 Release English"

!ELSEIF  "$(CFG)" == "AkelPad - Win32 Debug English"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\AkelPad.c
# End Source File
# Begin Source File

SOURCE=.\Edit.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\AkelFiles\Langs\Resources\AkelPad.ico
# End Source File
# Begin Source File

SOURCE=.\AkelFiles\Langs\Resources\DragMove.cur
# End Source File
# Begin Source File

SOURCE=.\AkelFiles\Langs\Resources\Empty.ico
# End Source File
# Begin Source File

SOURCE=.\AkelFiles\Langs\Resources\English.rc
# End Source File
# Begin Source File

SOURCE=.\AkelFiles\Langs\Resources\HandClose.cur
# End Source File
# Begin Source File

SOURCE=.\AkelFiles\Langs\Resources\HandOpen.cur
# End Source File
# End Group
# End Target
# End Project
