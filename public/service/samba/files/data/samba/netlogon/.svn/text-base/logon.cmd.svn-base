%header("REM")
##@echo off
if [%%1] == [--laptop-logoff] (
  @echo
  #foreach drive in logon_drives
    NET USE /d %(drive.split("|")[0]): /y
  #end
  exit /b
) else (
  @echo ""
  #foreach drive in logon_drives
    #if drive.split("|")[0] <> "H"
      NET USE /d %(drive.split("|")[0]): /y
    #end
  #end
  #foreach drive in logon_drives
    #if drive.split("|")[0] == "H"
      IF NOT EXIST %(drive.split("|")[0]): NET USE %(drive.split("|")[0]): "%(drive.split("|")[1])" /PERSISTENT:YES
    #else
      IF NOT EXIST %(drive.split("|")[0]): NET USE %(drive.split("|")[0]): "%(drive.split("|")[1])" /PERSISTENT:NO
    #end
  #end
  #foreach file in regfiles_user
    reg import "\\%(samba_host)\netlogon\registry-user/%(file)"
  #end
  if [%%1] == [--laptop-logon] (
    @echo ""
    #foreach file in regfiles_laptop
      reg import "\\%(samba_host)\netlogon\registry-laptop/%(file)"
    #end
  ) else (
    @echo ""
    #foreach file in regfiles_domain
      reg import "\\%(samba_host)\netlogon\registry-domain/%(file)"
    #end
  )
)
