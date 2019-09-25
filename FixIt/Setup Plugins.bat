@echo off
cd %~dp0
echo cd = %cd%

set /p pluginName="Please enter plugin folder name: "

set path=%~dp0\TorchBinaries

echo Check path: %path%\Plugins\%pluginName%
if exist "%path%\Plugins\%pluginName%" (
    rmdir "%path%\Plugins\%pluginName%"
    echo Plugins\%pluginName% old symlink deleted
)
mklink /J "%path%\Plugins\%pluginName%" "%cd%\%pluginName%\bin\x64\Debug"
if errorlevel 1 (
    goto ErrorPlugin%pluginName%
)

goto EndScript

:ErrorPlugin%pluginName%
echo An error occured creating the Plugins\%pluginName% symlink.
goto EndScript

:EndScript
echo All symlinks re-created successfully!
pause