@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  CICFlowMeter startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and CIC_FLOW_METER_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-Djava.library.path=../lib/native"

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\CICFlowMeter-4.0.jar;%APP_HOME%\lib\log4j-core-2.17.1.jar;%APP_HOME%\lib\slf4j-log4j12-1.7.25.jar;%APP_HOME%\lib\jnetpcap-1.4.r1425-1g.jar;%APP_HOME%\lib\junit-4.13.2.jar;%APP_HOME%\lib\commons-lang3-3.12.0.jar;%APP_HOME%\lib\commons-math3-3.6.1.jar;%APP_HOME%\lib\tika-core-2.2.1.jar;%APP_HOME%\lib\commons-io-20030203.000550.jar;%APP_HOME%\lib\weka-stable-3.8.6.jar;%APP_HOME%\lib\jfreechart-1.5.3.jar;%APP_HOME%\lib\guava-31.0.1-jre.jar;%APP_HOME%\lib\gson-2.8.9.jar;%APP_HOME%\lib\org.eclipse.paho.client.mqttv3-1.2.5.jar;%APP_HOME%\lib\log4j-api-2.17.1.jar;%APP_HOME%\lib\slf4j-api-1.7.32.jar;%APP_HOME%\lib\log4j-1.2.17.jar;%APP_HOME%\lib\hamcrest-core-1.3.jar;%APP_HOME%\lib\java-cup-11b-20160615.jar;%APP_HOME%\lib\java-cup-runtime-11b-20160615.jar;%APP_HOME%\lib\bounce-0.18.jar;%APP_HOME%\lib\mtj-1.0.4.jar;%APP_HOME%\lib\all-1.1.2.pom;%APP_HOME%\lib\netlib-native_ref-osx-x86_64-1.1-natives.jar;%APP_HOME%\lib\netlib-native_ref-linux-x86_64-1.1-natives.jar;%APP_HOME%\lib\netlib-native_ref-linux-i686-1.1-natives.jar;%APP_HOME%\lib\netlib-native_ref-win-x86_64-1.1-natives.jar;%APP_HOME%\lib\netlib-native_ref-win-i686-1.1-natives.jar;%APP_HOME%\lib\netlib-native_ref-linux-armhf-1.1-natives.jar;%APP_HOME%\lib\netlib-native_system-osx-x86_64-1.1-natives.jar;%APP_HOME%\lib\netlib-native_system-linux-x86_64-1.1-natives.jar;%APP_HOME%\lib\netlib-native_system-linux-i686-1.1-natives.jar;%APP_HOME%\lib\netlib-native_system-linux-armhf-1.1-natives.jar;%APP_HOME%\lib\netlib-native_system-win-x86_64-1.1-natives.jar;%APP_HOME%\lib\netlib-native_system-win-i686-1.1-natives.jar;%APP_HOME%\lib\native_ref-java-1.1.jar;%APP_HOME%\lib\native_system-java-1.1.jar;%APP_HOME%\lib\netlib-java-1.1.jar;%APP_HOME%\lib\core-1.1.2.jar;%APP_HOME%\lib\arpack_combined_all-0.1.jar;%APP_HOME%\lib\jfilechooser-bookmarks-0.1.6.jar;%APP_HOME%\lib\jaxb-runtime-2.3.5.jar;%APP_HOME%\lib\istack-commons-runtime-3.0.12.jar;%APP_HOME%\lib\jakarta.xml.bind-api-2.3.3.jar;%APP_HOME%\lib\jakarta.activation-api-1.2.2.jar;%APP_HOME%\lib\flatlaf-2.0.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-3.12.0.jar;%APP_HOME%\lib\error_prone_annotations-2.7.1.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar;%APP_HOME%\lib\jclipboardhelper-0.1.0.jar;%APP_HOME%\lib\txw2-2.3.5.jar;%APP_HOME%\lib\jakarta.activation-1.2.2.jar;%APP_HOME%\lib\jniloader-1.1.jar

@rem Execute CICFlowMeter
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %CIC_FLOW_METER_OPTS%  -classpath "%CLASSPATH%" cic.cs.unb.ca.ifm.App %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable CIC_FLOW_METER_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%CIC_FLOW_METER_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
