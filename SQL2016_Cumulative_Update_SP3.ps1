################################################################################################################
#	KB5050533 - Azure Connect feature pack for SQL Server 2017												                                                                                        ###
################################################################################################################
#	Firma: BitHawk AG
#	Script Name: SQL2016_Cumulative_Update_SP3.ps1
#	Description: 
#	Author: Marcel.Luginbuhl@bithawk.ch
#   Created: 03.06.2025
#   Last Modified: 

# Ortner Anlegen
New-Item -Name “_SQLCU” -ItemType Directory -Path “C:\”

# URL der Installationsdatei
$installerUrl = "https://catalog.s.download.windowsupdate.com/d/msdownload/update/software/secu/2024/11/sqlserver2016-kb5046856-x64_3ae45c27e7b0fefdec744530c64a8553339debbd.exe"

# Pfad, wo die Installationsdatei gespeichert wird
$installerPath = "C:\_SQLCU\SQLServer2016-KB5046856-x64.exe"

# Herunterladen der Datei
Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath

# Starten der Installation (für .msi-Dateien)
Start-Process $installerPath
