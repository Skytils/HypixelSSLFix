@rem    HypixelSSLFix - Add the missing root CA to the keystore
@rem    Copyright (C) 2022  Skytils

@rem    This program is free software: you can redistribute it and/or modify
@rem    it under the terms of the GNU General Public License as published by
@rem    the Free Software Foundation, either version 3 of the License, or
@rem    (at your option) any later version.
@rem
@rem    This program is distributed in the hope that it will be useful,
@rem    but WITHOUT ANY WARRANTY; without even the implied warranty of
@rem    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
@rem    GNU General Public License for more details.
@rem
@rem    You should have received a copy of the GNU General Public License
@rem    along with this program.  If not, see <http://www.gnu.org/licenses/>.

@ECHO OFF
title Fix SSL - join discord.gg/skytils for help
echo.    HypixelSSLFix  Copyright (C) 2022  Skytils
echo.    This program comes with ABSOLUTELY NO WARRANTY
echo.    This is free software, and you are welcome to redistribute it
echo.    under certain conditions
echo.    For more information, view the included LICENSE.md file
echo.
echo.

echo.This script aims to fix an issue with missing certificates in the default keystore
echo.It assumes your Minecraft Launcher is installed globally
echo.Join discord.gg/skytils for help
pause
"C:\Program Files (x86)\Minecraft Launcher\runtime\jre-legacy\windows-x64\jre-legacy\bin\keytool.exe" -importkeystore -srckeystore .\skytilsletsencrypt.jks -srcstorepass skytilsontop -destkeystore "C:\Program Files (x86)\Minecraft Launcher\runtime\jre-legacy\windows-x64\jre-legacy\lib\security\cacerts" -deststorepass changeit
echo.It should say 5 certificates imported successfully
echo.If it fails join discord.gg/skytils
pause