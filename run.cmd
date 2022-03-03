IF "%1." == "." (
  ECHO PRJ_HOME path should be defined. Path must be ended with "\"
  GOTO EXIT
) ELSE (
  SET PRJ_HOME=%1
)
IF "%2" == "Release" OR "%2" == "Debug" (
  SET PRJ_TARGET=%2
) ELSE (
  SET PRJ_TARGET=Release
)
SET PRJ_TARGET_SWITCH=-c %PRJ_TARGET%
docker run --name example-server -v %PRJ_HOME%bin:/app/bin --rm example-dotnet %PRJ_TARGET_SWITCH%
:EXIT
